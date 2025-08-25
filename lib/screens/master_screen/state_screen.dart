import 'package:flutter/material.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';

class RajyaScreen extends StatefulWidget {
  const RajyaScreen({super.key});

  @override
  State<RajyaScreen> createState() => _RajyaScreenState();
}

class _RajyaScreenState extends State<RajyaScreen> {
  final TextEditingController _stateNameController = TextEditingController();
  final TextEditingController _createdByController =
      TextEditingController(text: "Admin"); // default value
  final AppDatabase db = AppDatabase();

  int? _editingStateId; // To track which state is being edited

  // Add or Update State
  Future<void> _addOrUpdateState() async {
    final stateName = _stateNameController.text.trim();
    final createdBy = _createdByController.text.trim();

    if (stateName.isEmpty) return;

    if (_editingStateId == null) {
      // Insert new state
      await db.into(db.rajya).insert(
            RajyaCompanion.insert(
              stateName: stateName,
              createdBy: drift.Value(createdBy),
            ),
          );
    } else {
      // Update existing state
      final existingState = RajyaData(
        id: _editingStateId!,
        stateName: stateName,
        createdBy: createdBy,
        createdDate: DateTime.now(), // or keep original date
      );
      await db.update(db.rajya).replace(existingState);
      _editingStateId = null; // reset editing
    }

    _stateNameController.clear();
    _createdByController.text = "Admin";
    setState(() {}); // refresh table
  }

  // Delete State
  Future<void> _deleteState(int id) async {
    await (db.delete(db.rajya)..where((tbl) => tbl.id.equals(id))).go();
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
                    controller: _stateNameController,
                    ddName: "Enter State Name",
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
                onPressed: _addOrUpdateState,
                ddName: _editingStateId == null ? 'Submit' : 'Update',
                height: 40,
                width: 100,
                colors: const Color(0xff5793CE),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Data Table
          // Data Table
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: FutureBuilder<List<RajyaData>>(
                  future: db.select(db.rajya).get(),
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
                          child: Text("No states added yet",
                              style: TextStyle(fontFamily: 'FontMain')));
                    }

                    return DataTable(
                      border: TableBorder.all(color: Colors.grey.shade300),
                      columns: const [
                        DataColumn(
                            label: Text("ID",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("State Name",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Created By",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Actions",
                                style: TextStyle(fontFamily: 'FontMain'))),
                      ],
                      rows: states.map((state) {
                        return DataRow(cells: [
                          DataCell(Text(
                            state.id.toString(),
                            style: TextStyle(fontFamily: 'FontMain'),
                          )),
                          DataCell(Text(state.stateName,
                              style: TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(state.createdBy ?? "Unknown",
                              style: TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Row(
                            children: [
                              IconButton(
                                icon:
                                    const Icon(Icons.edit, color: Colors.blue),
                                onPressed: () {
                                  _stateNameController.text = state.stateName;
                                  _createdByController.text =
                                      state.createdBy ?? "Admin";
                                  _editingStateId = state.id;
                                  setState(() {});
                                },
                              ),
                              IconButton(
                                icon:
                                    const Icon(Icons.delete, color: Colors.red),
                                onPressed: () async {
                                  await _deleteState(state.id);
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
