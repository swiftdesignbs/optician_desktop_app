import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/screens/create_customer.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/outline_btn.dart';

class CustomerListScreen extends StatefulWidget {
  const CustomerListScreen({super.key});

  @override
  State<CustomerListScreen> createState() => _CustomerListScreenState();
}

class _CustomerListScreenState extends State<CustomerListScreen> {
  final AppDatabase db = AppDatabase();
  late Future<List<CustomerData>> _customerFuture;

  @override
  void initState() {
    super.initState();
    _fetchCustomers();
    print(
      'Error: ${_customerFuture}',
    );
  }

  void _fetchCustomers() {
    setState(() {
      _customerFuture = db.getAllCustomers();
    });
  }

  void _deleteCustomer(CustomerData customer) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        backgroundColor: Colors.white,
        title: const Text(
          'Confirm Deletion',
          style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'FontMain'),
        ),
        content: Text(
          'Are you sure you want to delete ${customer.firstName}?',
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontFamily: 'FontMain'),
        ),
        actions: [
          OutLineBtn(
            onPressed: () => Navigator.pop(context, false),
            ddName: 'Cancel',
            height: 50,
            width: 70,
            colors: const Color(0xff5793CE),
          ),
          Buttons(
            onPressed: () => Navigator.pop(context, true),
            ddName: 'Delete',
            height: 50,
            width: 90,
            colors: const Color(0xff5793CE),
          )
        ],
      ),
    );

    if (confirm == true) {
      await db.deleteCustomer(customer.id);
      _fetchCustomers();
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Customer deleted")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.white,
      body: FutureBuilder<List<CustomerData>>(
        future: _customerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(
                    fontFamily: 'Fontmain', fontWeight: FontWeight.bold),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                'No customers found',
                style: TextStyle(
                    fontFamily: 'Fontmain', fontWeight: FontWeight.bold),
              ),
            );
          }

          final customers = snapshot.data!;

          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minWidth: MediaQuery.of(context).size.width),
                child: DataTable(
                  columnSpacing: 24,
                  columns: const [
                    DataColumn(
                        label: Text('ID',
                            style: const TextStyle(
                                fontFamily: 'Fontmain',
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('First Name',
                            style: const TextStyle(
                                fontFamily: 'Fontmain',
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Last Name',
                            style: const TextStyle(
                                fontFamily: 'Fontmain',
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Email',
                            style: const TextStyle(
                                fontFamily: 'Fontmain',
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Mobile',
                            style: const TextStyle(
                                fontFamily: 'Fontmain',
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Actions',
                            style: const TextStyle(
                                fontFamily: 'Fontmain',
                                fontWeight: FontWeight.bold))),
                  ],
                  rows: customers.map((customer) {
                    return DataRow(cells: [
                      DataCell(Text(customer.id.toString(),
                          style: const TextStyle(
                              fontFamily: 'Fontmain',
                              fontWeight: FontWeight.bold))),
                      DataCell(Text(customer.firstName,
                          style: const TextStyle(
                              fontFamily: 'Fontmain',
                              fontWeight: FontWeight.bold))),
                      DataCell(Text(customer.lastName ?? '',
                          style: const TextStyle(
                              fontFamily: 'Fontmain',
                              fontWeight: FontWeight.bold))),
                      DataCell(Text(customer.email ?? '',
                          style: const TextStyle(
                              fontFamily: 'Fontmain',
                              fontWeight: FontWeight.bold))),
                      DataCell(Text(customer.mobile ?? '',
                          style: const TextStyle(
                              fontFamily: 'Fontmain',
                              fontWeight: FontWeight.bold))),
                      DataCell(Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit,
                                size: 20, color: Colors.green),
                            onPressed: () async {
                              final result = await showDialog<bool>(
                                context: context,
                                builder: (context) =>
                                    CustomerFormDialog(customer: customer),
                              );

                              if (result == true) {
                                _fetchCustomers();
                              }
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete,
                                size: 20, color: Colors.red),
                            onPressed: () => _deleteCustomer(customer),
                          ),
                        ],
                      )),
                    ]);
                  }).toList(),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final result = await showDialog<bool>(
            context: context,
            builder: (BuildContext context) {
              return CustomerFormDialog(
                customer: CustomerData(
                  id: 0,
                  firstName: '',
                  middleName: '',
                  lastName: '',
                  email: '',
                  mobile: '',
                  address: '',
                  gender: '',
                  customerType: '',
                  createdDate: DateTime.now(),
                ),
              );
            },
          );

          if (result == true) {
            _fetchCustomers();
          }
        },
        label: const Text(
          'Add Customer',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'fontmain',
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class CustomerFormDialog extends StatefulWidget {
  final CustomerData customer;

  const CustomerFormDialog({super.key, required this.customer});

  @override
  _CustomerFormDialogState createState() => _CustomerFormDialogState();
}

class _CustomerFormDialogState extends State<CustomerFormDialog> {
  final AppDatabase db = AppDatabase();
  final _formKey = GlobalKey<FormState>();

  late TextEditingController firstNameController;
  late TextEditingController middleNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailController;
  late TextEditingController mobileController;
  late TextEditingController addressController;

  String? selectedGender;
  String? selectedCustomerType;

  final List<String> genderList = ['Male', 'Female', 'Other'];
  final List<String> customerTypeList = ['Regular', 'VIP', 'New'];

  bool get isAddMode => widget.customer.id == 0;

  @override
  void initState() {
    super.initState();

    final customer = widget.customer;

    firstNameController = TextEditingController(text: customer.firstName);
    middleNameController = TextEditingController(text: customer.middleName);
    lastNameController = TextEditingController(text: customer.lastName);
    emailController = TextEditingController(text: customer.email);
    mobileController = TextEditingController(text: customer.mobile);
    addressController = TextEditingController(text: customer.address);

    if (isAddMode) {
      selectedGender = null;
      selectedCustomerType = null;
    } else {
      selectedGender = customer.gender;
      selectedCustomerType = customer.customerType;
    }
  }

  @override
  void dispose() {
    firstNameController.dispose();
    middleNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    addressController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    final firstName = firstNameController.text.trim();
    final middleName = middleNameController.text.trim();
    final lastName = lastNameController.text.trim();
    final email = emailController.text.trim();
    final mobile = mobileController.text.trim();
    final address = addressController.text.trim();

    // Validate mobile number
    if (mobile.isEmpty || mobile.length != 10) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text("Mobile number must be exactly 10 digits")),
      );
      return;
    }

    // Check for duplicate mobile number only on Add mode
    if (isAddMode) {
      final existingCustomer = await db.customSelect(
        'SELECT * FROM customer WHERE mobile = ?',
        variables: [drift.Variable<String>(mobile)],
      ).get();

      if (existingCustomer.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Mobile number already exists")),
        );
        return;
      }
    }

    final customerCompanion = CustomerCompanion(
      id: isAddMode
          ? const drift.Value.absent()
          : drift.Value(widget.customer.id),
      firstName: drift.Value(firstName),
      middleName: drift.Value(middleName),
      lastName: drift.Value(lastName),
      mobile: drift.Value(mobile),
      email: drift.Value(email),
      address: drift.Value(address),
      gender: selectedGender != null
          ? drift.Value(selectedGender!)
          : const drift.Value.absent(),
      customerType: selectedCustomerType != null
          ? drift.Value(selectedCustomerType!)
          : const drift.Value.absent(),
      createdDate: drift.Value(DateTime.now()),
    );

    if (isAddMode) {
      await db.insertCustomer(customerCompanion);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Customer added successfully")),
      );
    } else {
      await db.updateCustomer(customerCompanion);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Customer updated successfully")),
      );
    }

    if (mounted) Navigator.pop(context, true); // Return true on success
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      title: Text(
        isAddMode ? "Add Customer" : "Edit Customer",
        style: const TextStyle(
            fontFamily: 'FontMain', fontWeight: FontWeight.bold),
      ),
      content: SizedBox(
        width: 500,
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildTextField(firstNameController, "First Name"),
                buildTextField(middleNameController, "Middle Name"),
                buildTextField(lastNameController, "Last Name"),
                buildTextField(emailController, "Email"),
                TextFormField(
                  style: const TextStyle(
                      fontFamily: 'FontMain', fontWeight: FontWeight.bold),
                  controller: mobileController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Mobile',
                    labelStyle: TextStyle(
                        fontFamily: 'FontMain', fontWeight: FontWeight.bold),
                  ),
                  maxLength: 10,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Mobile number is required';
                    } else if (value.trim().length != 10) {
                      return 'Mobile number must be 10 digits';
                    }
                    return null;
                  },
                ),
                DropdownButtonFormField<String>(
                  style: const TextStyle(
                      fontFamily: 'FontMain',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                        fontFamily: 'FontMain', fontWeight: FontWeight.bold),
                    labelText: 'Gender',
                  ),
                  value: selectedGender,
                  items: genderList.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedGender = newValue!;
                    });
                  },
                ),
                DropdownButtonFormField<String>(
                  style: const TextStyle(
                      fontFamily: 'FontMain',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                        fontFamily: 'FontMain', fontWeight: FontWeight.bold),
                    labelText: 'Customer Type',
                  ),
                  value: selectedCustomerType,
                  items: customerTypeList.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedCustomerType = newValue!;
                    });
                  },
                ),
                buildTextField(addressController, "Address", maxLines: 2),
              ],
            ),
          ),
        ),
      ),
      actions: [
        OutLineBtn(
          onPressed: () => Navigator.pop(context),
          ddName: 'Cancel',
          height: 50,
          width: 70,
          colors: const Color(0xff5793CE),
        ),
        Buttons(
          onPressed: _submitForm,
          ddName: 'Save',
          height: 50,
          width: 90,
          colors: const Color(0xff5793CE),
        )
      ],
    );
  }

  Widget buildTextField(TextEditingController controller, String label,
      {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        style: const TextStyle(
            fontFamily: 'FontMain', fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
              fontFamily: 'FontMain', fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
