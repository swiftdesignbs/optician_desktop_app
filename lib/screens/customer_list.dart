import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:optician_desktop_app/data/app_database.dart';

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
  }

  void _fetchCustomers() {
    setState(() {
      _customerFuture = db.getAllCustomers();
    });
  }

  void _deleteCustomer(int id) async {
    await db.deleteCustomer(id);
    _fetchCustomers();
  }

  void _editCustomer(CustomerData customer) async {
    final result = await showDialog(
      context: context,
      builder: (context) => CustomerFormDialog(db: db, customer: customer),
    );
    if (result == true) {
      _fetchCustomers();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<CustomerData>>(
        future: _customerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No customers found'));
          }

          final customers = snapshot.data!;
          return ListView.builder(
            itemCount: customers.length,
            itemBuilder: (context, index) {
              final customer = customers[index];
              return ListTile(
                title: Text(customer.firstName,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(customer.mobile ?? '',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () => _editCustomer(customer),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _deleteCustomer(customer.id),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      // Floating button is disabled since creation is not allowed
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      //   backgroundColor: Colors.grey.shade400,
      // ),
    );
  }
}

class CustomerFormDialog extends StatefulWidget {
  final AppDatabase db;
  final CustomerData? customer;

  const CustomerFormDialog({
    super.key,
    required this.db,
    required this.customer,
  });

  @override
  State<CustomerFormDialog> createState() => _CustomerFormDialogState();
}

class _CustomerFormDialogState extends State<CustomerFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _firstNameController;
  late TextEditingController _mobileController;

  @override
  void initState() {
    super.initState();

    if (widget.customer == null) {
      throw Exception("Customer data must be provided for editing.");
    }

    _firstNameController =
        TextEditingController(text: widget.customer!.firstName);
    _mobileController =
        TextEditingController(text: widget.customer!.mobile ?? '');
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _mobileController.dispose();
    super.dispose();
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      final updateCompanion = CustomerCompanion(
        id: drift.Value(widget.customer!.id),
        firstName: drift.Value(_firstNameController.text),
        mobile: drift.Value(_mobileController.text),
      );

      await widget.db.updateCustomer(updateCompanion);
      if (mounted) Navigator.of(context).pop(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Customer'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _firstNameController,
              decoration: const InputDecoration(labelText: 'First Name'),
              validator: (value) => value!.isEmpty ? 'Required' : null,
            ),
            TextFormField(
              controller: _mobileController,
              decoration: const InputDecoration(labelText: 'Mobile No'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: _submit,
          child: const Text("Update"),
        ),
      ],
    );
  }
}
