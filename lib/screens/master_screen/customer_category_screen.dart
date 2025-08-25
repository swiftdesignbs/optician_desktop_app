import 'package:flutter/material.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';

class CustomerCategoryScreen extends StatefulWidget {
  const CustomerCategoryScreen({super.key});

  @override
  State<CustomerCategoryScreen> createState() => _CustomerCategoryScreenState();
}

class _CustomerCategoryScreenState extends State<CustomerCategoryScreen> {
  final TextEditingController _cusomerCatNameController =
      TextEditingController();
  final TextEditingController _createdByController =
      TextEditingController(text: "Admin"); // default value
  final AppDatabase db = AppDatabase();

  int? _editingCustomerCategoryId; // To track which state is being edited

  // Add or Update State
  Future<void> _addOrUpdateCustomerCategory() async {
    final customerCategoryName = _cusomerCatNameController.text.trim();
    final createdBy = _createdByController.text.trim();

    if (customerCategoryName.isEmpty) return;

    if (_editingCustomerCategoryId == null) {
      // Insert new state
      await db.into(db.customerCategory).insert(
            CustomerCategoryCompanion.insert(
              customerCatName: customerCategoryName,
              createdBy: drift.Value(createdBy),
            ),
          );
    } else {
      // Update existing state
      final existingCustomerCategory = CustomerCategoryData(
        id: _editingCustomerCategoryId!,
        customerCatName: customerCategoryName,
        createdBy: createdBy,
        createdDate: DateTime.now(), // or keep original date
      );
      await db.update(db.customerCategory).replace(existingCustomerCategory);
      _editingCustomerCategoryId = null; // reset editing
    }

    _cusomerCatNameController.clear();
    _createdByController.text = "Admin";
    setState(() {}); // refresh table
  }

  // Delete State
  Future<void> deleteCustomerCategory(int id) async {
    await (db.delete(db.customerCategory)..where((tbl) => tbl.id.equals(id)))
        .go();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Form Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: CustomTextField(
                    controller: _cusomerCatNameController,
                    ddName: "Enter Customer Category",
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: CustomTextField(
                    controller: _createdByController,
                    ddName: "Created By",
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height: 40,
              width: 100,
              child: Buttons(
                onPressed: _addOrUpdateCustomerCategory,
                ddName:
                    _editingCustomerCategoryId == null ? 'Submit' : 'Update',
                height: 40,
                width: 100,
                colors: const Color(0xff5793CE),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Data Table

          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: FutureBuilder<List<CustomerCategoryData>>(
                  future: db.select(db.customerCategory).get(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Center(
                          child: Text("Error: ${snapshot.error}",
                              style: const TextStyle(fontFamily: 'FontMain')));
                    }
                    final states = snapshot.data ?? [];
                    if (states.isEmpty) {
                      return const Center(
                          child: Text("No Customer Category added yet",
                              style: TextStyle(fontFamily: 'FontMain')));
                    }

                    return DataTable(
                      border: TableBorder.all(color: Colors.grey.shade300),
                      columns: const [
                        DataColumn(
                            label: Text("ID",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Customer Category Name",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Created By",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Actions",
                                style: TextStyle(fontFamily: 'FontMain'))),
                      ],
                      rows: states.map((customerCategory) {
                        return DataRow(cells: [
                          DataCell(Text(
                            customerCategory.id.toString(),
                            style: const TextStyle(fontFamily: 'FontMain'),
                          )),
                          DataCell(Text(customerCategory.customerCatName,
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(customerCategory.createdBy ?? "Unknown",
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Row(
                            children: [
                              IconButton(
                                icon:
                                    const Icon(Icons.edit, color: Colors.blue),
                                onPressed: () {
                                  _cusomerCatNameController.text =
                                      customerCategory.customerCatName;
                                  _createdByController.text =
                                      customerCategory.createdBy ?? "Admin";
                                  _editingCustomerCategoryId =
                                      customerCategory.id;
                                  setState(() {});
                                },
                              ),
                              IconButton(
                                icon:
                                    const Icon(Icons.delete, color: Colors.red),
                                onPressed: () async {
                                  await deleteCustomerCategory(
                                      customerCategory.id);
                                },
                              ),
                            ],
                          )),
                        ]);
                      }).toList(),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
