import 'package:flutter/material.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';

class BrandsScreen extends StatefulWidget {
  const BrandsScreen({super.key});

  @override
  State<BrandsScreen> createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
  final TextEditingController _brandNameController = TextEditingController();
  final TextEditingController _createdByController =
      TextEditingController(text: "Admin"); // default value
  final AppDatabase db = AppDatabase();

  int? _editingBrandId; // To track which state is being edited

  // Add or Update State
  Future<void> _addOrUpdateBrand() async {
    final brandName = _brandNameController.text.trim();
    final createdBy = _createdByController.text.trim();

    if (brandName.isEmpty) return;

    if (_editingBrandId == null) {
      // Insert new state
      await db.into(db.brands).insert(
            BrandsCompanion.insert(
              stateName: brandName,
              createdBy: drift.Value(createdBy),
            ),
          );
    } else {
      // Update existing state
      final existingBrand = Brand(
        id: _editingBrandId!,
        stateName: brandName,
        createdBy: createdBy,
        createdDate: DateTime.now(), // or keep original date
      );
      await db.update(db.brands).replace(existingBrand);
      _editingBrandId = null; // reset editing
    }

    _brandNameController.clear();
    _createdByController.text = "Admin";
    setState(() {}); // refresh table
  }

  // Delete State
  Future<void> deleteBrand(int id) async {
    await (db.delete(db.brands)..where((tbl) => tbl.id.equals(id))).go();
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
                    controller: _brandNameController,
                    ddName: "Enter Brands Name",
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
                onPressed: _addOrUpdateBrand,
                ddName: _editingBrandId == null ? 'Submit' : 'Update',
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
                child: FutureBuilder<List<Brand>>(
                  future: db.select(db.brands).get(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Center(
                          child: Text("Error: ${snapshot.error}",
                              style: TextStyle(fontFamily: 'FontMain')));
                    }
                    final states = snapshot.data ?? [];
                    if (states.isEmpty) {
                      return const Center(
                          child: Text("No Brands added yet",
                              style: TextStyle(fontFamily: 'FontMain')));
                    }

                    return DataTable(
                      border: TableBorder.all(color: Colors.grey.shade300),
                      columns: const [
                        DataColumn(
                            label: Text("ID",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Brands Name",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Created By",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Actions",
                                style: TextStyle(fontFamily: 'FontMain'))),
                      ],
                      rows: states.map((brand) {
                        return DataRow(cells: [
                          DataCell(Text(
                            brand.id.toString(),
                            style: TextStyle(fontFamily: 'FontMain'),
                          )),
                          DataCell(Text(brand.stateName,
                              style: TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(brand.createdBy ?? "Unknown",
                              style: TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Row(
                            children: [
                              IconButton(
                                icon:
                                    const Icon(Icons.edit, color: Colors.blue),
                                onPressed: () {
                                  _brandNameController.text = brand.stateName;
                                  _createdByController.text =
                                      brand.createdBy ?? "Admin";
                                  _editingBrandId = brand.id;
                                  setState(() {});
                                },
                              ),
                              IconButton(
                                icon:
                                    const Icon(Icons.delete, color: Colors.red),
                                onPressed: () async {
                                  await deleteBrand(brand.id);
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
