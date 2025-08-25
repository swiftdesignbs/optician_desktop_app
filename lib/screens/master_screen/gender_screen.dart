// lib/screens/master/gender_screen.dart
import 'package:flutter/material.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:drift/drift.dart' as drift;

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  final AppDatabase db = AppDatabase();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _createdByController =
      TextEditingController(text: "Admin");

  int? _editingGenderId;

  Future<void> _addOrUpdateGender() async {
    if (_genderController.text.isEmpty) return;

    if (_editingGenderId == null) {
      await db.insertGender(GendersCompanion.insert(
        genderName: _genderController.text,
        createdBy: drift.Value(_createdByController.text),
      ));
    } else {
      await db.updateGender(Gender(
        id: _editingGenderId!,
        genderName: _genderController.text,
        createdBy: _createdByController.text,
        createdDate: DateTime.now(),
      ));
      _editingGenderId = null;
    }

    _genderController.clear();
    _createdByController.text = "Admin";
    setState(() {});
  }

  Future<void> _deleteGender(int id) async {
    await db.deleteGender(id);
    setState(() {});
  }

  void _editGender(Gender gender) {
    _editingGenderId = gender.id;
    _genderController.text = gender.genderName;
    _createdByController.text = gender.createdBy ?? "Admin";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Manage Genders")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Input Row
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: _genderController,
                    ddName: "Gender Name",
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: CustomTextField(
                      controller: _createdByController, ddName: "Created By"),
                ),
                const SizedBox(width: 16),
              ],
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Buttons(
                  onPressed: _addOrUpdateGender,
                  ddName: _editingGenderId == null ? "Add" : "Update",
                  height: 40,
                  width: 120,
                  colors: const Color(0xff5793CE),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Data Table
            Expanded(
              child: FutureBuilder<List<Gender>>(
                future: db.getAllGenders(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return const Center(child: CircularProgressIndicator());
                  final genders = snapshot.data!;
                  if (genders.isEmpty)
                    return const Center(
                        child: Text("No genders added",
                            style: const TextStyle(fontFamily: 'FontMain')));

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      border: TableBorder.all(color: Colors.grey.shade300),
                      columns: const [
                        DataColumn(
                            label: Text("ID",
                                style:
                                    const TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Gender Name",
                                style:
                                    const TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Created By",
                                style:
                                    const TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Actions",
                                style:
                                    const TextStyle(fontFamily: 'FontMain'))),
                      ],
                      rows: genders.map((gender) {
                        return DataRow(cells: [
                          DataCell(Text(gender.id.toString(),
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(gender.genderName,
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(gender.createdBy ?? "",
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Row(
                            children: [
                              IconButton(
                                icon:
                                    const Icon(Icons.edit, color: Colors.blue),
                                onPressed: () => _editGender(gender),
                              ),
                              IconButton(
                                icon:
                                    const Icon(Icons.delete, color: Colors.red),
                                onPressed: () async =>
                                    await _deleteGender(gender.id),
                              ),
                            ],
                          )),
                        ]);
                      }).toList(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
