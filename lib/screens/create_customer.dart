import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/screens/customer_list.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dd.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:drift/drift.dart' as drift;

class CustomerCreateScreen extends StatefulWidget {
  const CustomerCreateScreen({super.key});

  @override
  State<CustomerCreateScreen> createState() => _CustomerCreateScreenState();
}

class _CustomerCreateScreenState extends State<CustomerCreateScreen> {
  final AppDatabase db = AppDatabase();

  // Controllers
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  // Dropdown values
  String? selectedGender;
  String? selectedCustomerType;

  // Dropdown data
  final List<Map<String, String>> genderList = [
    {"id": "1", "name": "Female"},
    {"id": "2", "name": "Male"},
    {"id": "3", "name": "Others"},
  ];

  final List<Map<String, String>> customerTypeList = [
    {'id': '0', 'name': 'Regular'},
    {'id': '1', 'name': 'VIP'},
    {'id': '2', 'name': 'New'},
  ];
  DateTime? pickedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Create Customer',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'FontMain',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Section 1: Personal Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Personal Information",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain')),
                        const SizedBox(height: 16),
                        CustomTextField(
                            controller: _firstNameController,
                            ddName: "First Name"),
                        const SizedBox(height: 16),
                        CustomTextField(
                            controller: _middleNameController,
                            ddName: "Middle Name"),
                        const SizedBox(height: 16),
                        CustomTextField(
                            controller: _lastNameController,
                            ddName: "Last Name"),
                      ],
                    ),
                  ),
                  const SizedBox(width: 32),

                  // Section 2: Contact Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Contact Information",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain')),
                        const SizedBox(height: 16),
                        CustomTextField(
                            controller: _phoneController,
                            ddName: "Phone Number"),
                        const SizedBox(height: 16),
                        CustomTextField(
                            controller: _emailController, ddName: "Email"),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: CustomDropdown(
                                ddName: 'Gender',
                                items: genderList,
                                value: selectedGender,
                                onChanged: (value) =>
                                    setState(() => selectedGender = value),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CustomDropdown(
                                ddName: 'Customer Type',
                                items: customerTypeList,
                                value: selectedCustomerType,
                                onChanged: (value) => setState(
                                    () => selectedCustomerType = value),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  'Created Date',
                                  style: TextStyle(
                                      fontFamily: 'FontMain',
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                                // width: 170,
                                child: TextFormField(
                                  textAlignVertical: TextAlignVertical.center,
                                  textAlign:
                                      TextAlign.left, // Align text to the left
                                  style: const TextStyle(
                                      fontFamily: 'FontMain',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                  controller: _dobController,
                                  onTap: () async {
                                    pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2900));
                                    if (pickedDate != null) {
                                      setState(() {
                                        _dobController.text =
                                            DateFormat('dd-MM-yyyy')
                                                .format(pickedDate!);
                                      });
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal:
                                            8), // Adjust padding for better vertical centering
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 217, 215, 215),
                                          width: 1),
                                      borderRadius: BorderRadius
                                          .zero, // Remove border radius
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius
                                          .zero, // Remove border radius
                                    ),
                                    hintStyle: TextStyle(
                                      fontFamily: 'FontMain',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ])
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // Address
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Address",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FontMain')),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 70,
                    child: TextFormField(
                      controller: _addressController,
                      maxLines: 3,
                      style: const TextStyle(
                          fontFamily: 'FontMain',
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 32),

              // Save Button
              // SizedBox(
              //   width: 200,
              //   child: ElevatedButton(
              //     onPressed: _submitForm,
              //     child: const Text("Save",
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold, fontFamily: 'FontMain')),
              //   ),
              // )

              Buttons(
                  onPressed: _submitForm,
                  ddName: 'Save',
                  height: 40,
                  width: 150,
                  colors: const Color(0xff5793CE))
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() async {
    print("=== SUBMIT FORM STARTED ===");

    // Validate empty fields
    print("First Name: ${_firstNameController.text.trim()}");
    print("Middle Name: ${_middleNameController.text.trim()}");
    print("Last Name: ${_lastNameController.text.trim()}");
    print("Phone: ${_phoneController.text.trim()}");
    print("Email: ${_emailController.text.trim()}");
    print("Address: ${_addressController.text.trim()}");
    print("Gender: $selectedGender");
    print("Customer Type: $selectedCustomerType");

    if (_firstNameController.text.trim().isEmpty ||
        _lastNameController.text.trim().isEmpty ||
        _phoneController.text.trim().isEmpty ||
        _emailController.text.trim().isEmpty ||
        _addressController.text.trim().isEmpty ||
        selectedGender == null ||
        selectedCustomerType == null) {
      print("❌ Validation failed: Missing fields");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Please fill in all required fields")),
        );
      }
      return;
    }

    // Check duplicate phone
    print("Checking if mobile exists: ${_phoneController.text.trim()}");

    final existingCustomer = await db.customSelect(
      'SELECT * FROM customer WHERE mobile = ?',
      variables: [drift.Variable(_phoneController.text.trim())],
    ).get();

    print("Existing customer rows: ${existingCustomer.length}");

    if (existingCustomer.isNotEmpty) {
      print("❌ Duplicate mobile found");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Mobile number already exists")),
        );
      }
      return;
    }

    // Build customer companion
    final customer = CustomerCompanion(
      firstName: drift.Value(_firstNameController.text.trim()),
      middleName: drift.Value(_middleNameController.text.trim().isEmpty
          ? ""
          : _middleNameController.text.trim()),
      lastName: drift.Value(_lastNameController.text.trim()),
      mobile: drift.Value(_phoneController.text.trim()),
      email: drift.Value(_emailController.text.trim()),
      address: drift.Value(_addressController.text.trim()),
      gender: drift.Value(selectedGender!), // safe now
      customerType: drift.Value(selectedCustomerType!),
      createdDate: drift.Value(DateTime.now()),
    );

    print("Customer object prepared: $customer");

    await db.insertCustomer(customer);
    print("✅ Customer inserted successfully");

    if (!mounted) {
      print("Widget not mounted, returning early");
      return;
    }

    // Show success first
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Customer saved successfully")),
    );

    // Clear form before navigation
    print("Clearing form fields...");
    _firstNameController.clear();
    _middleNameController.clear();
    _lastNameController.clear();
    _phoneController.clear();
    _emailController.clear();
    _dobController.clear();
    _addressController.clear();
    setState(() {
      selectedGender = null;
      selectedCustomerType = null;
    });

    print("Navigating to CustomerListScreen...");
    // Navigate after reset
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const CustomerListScreen()),
    );

    print("=== SUBMIT FORM COMPLETED ===");
  }
}
