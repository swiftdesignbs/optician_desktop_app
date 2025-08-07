import 'package:flutter/material.dart';
import 'package:optician_desktop_app/data/app_database.dart';
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
                        CustomTextField(
                          controller: _dobController,
                          ddName: "Date of Birth",
                        ),
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
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text("Save",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'FontMain')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() async {
    final customer = CustomerCompanion(
      firstName: drift.Value(_firstNameController.text),
      middleName: drift.Value(_middleNameController.text),
      lastName: drift.Value(_lastNameController.text),
      mobile: drift.Value(_phoneController.text),
      email: drift.Value(_emailController.text),
      address: drift.Value(_addressController.text),
      // Add more fields if needed
      createdDate: drift.Value(DateTime.now()),
    );

    await db.insertCustomer(customer);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Customer saved successfully")),
      );
      Navigator.pop(context);
    }
  }
}
