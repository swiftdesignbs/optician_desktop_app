import 'package:flutter/material.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:drift/drift.dart' as drift;

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  final TextEditingController _cityNameController = TextEditingController();
  final TextEditingController _createdByController =
      TextEditingController(text: "Admin");
  int? _selectedStateId;
  int? _editingCityId;

  final AppDatabase db = AppDatabase();

  Future<void> _addOrUpdateCity() async {
    final cityName = _cityNameController.text.trim();
    final createdBy = _createdByController.text.trim();
    final stateId = _selectedStateId;

    if (cityName.isEmpty || stateId == null) return;

    if (_editingCityId == null) {
      // Insert
      await db.into(db.cities).insert(
            CitiesCompanion.insert(
              cityName: cityName,
              stateId: stateId,
              createdBy: drift.Value(createdBy),
            ),
          );
    } else {
      // Update
      final city = City(
        id: _editingCityId!,
        cityName: cityName,
        stateId: stateId,
        createdBy: createdBy,
        createdDate: DateTime.now(),
      );
      await db.update(db.cities).replace(city);
      _editingCityId = null;
    }

    _cityNameController.clear();
    _createdByController.text = "Admin";
    _selectedStateId = null;
    setState(() {});
  }

  Future<void> _deleteCity(int id) async {
    await (db.delete(db.cities)..where((tbl) => tbl.id.equals(id))).go();
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
                  child: StreamBuilder<List<RajyaData>>(
                    stream: db.select(db.rajya).watch(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return const CircularProgressIndicator();
                      final states = snapshot.data!;
                      final items = states
                          .map((s) =>
                              {"id": s.id.toString(), "name": s.stateName})
                          .toList();
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: CustomDropdown(
                          ddName: "Select State",
                          items: items,
                          value: _selectedStateId != null
                              ? states
                                  .firstWhere((s) => s.id == _selectedStateId)
                                  .stateName
                              : null,
                          onChanged: (val) {
                            final selected =
                                states.firstWhere((s) => s.stateName == val);
                            setState(() {
                              _selectedStateId = selected.id;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CustomTextField(
                      controller: _cityNameController,
                      ddName: "Enter City Name",
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
                  onPressed: _addOrUpdateCity,
                  ddName: _editingCityId == null ? "Submit" : "Update",
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
                  child: FutureBuilder<List<City>>(
                    future: db.select(db.cities).get(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (snapshot.hasError) {
                        return Center(child: Text("Error: ${snapshot.error}", style: TextStyle(fontFamily: 'FontMain')));
                      }

                      final cities = snapshot.data ?? [];
                      if (cities.isEmpty) {
                        return const Center(child: Text("No cities added yet", style: TextStyle(fontFamily: 'FontMain')));
                      }

                      return DataTable(
                        border: TableBorder.all(color: Colors.grey.shade300),
                        columns: const [
                          DataColumn(label: Text("ID", style: TextStyle(fontFamily: 'FontMain'))),
                          DataColumn(label: Text("City Name", style: TextStyle(fontFamily: 'FontMain'))),
                          DataColumn(label: Text("State ID", style: TextStyle(fontFamily: 'FontMain'))),
                          DataColumn(label: Text("Created By", style: TextStyle(fontFamily: 'FontMain'))),
                          DataColumn(label: Text("Actions", style: TextStyle(fontFamily: 'FontMain'))),
                        ],
                        rows: cities.map((city) {
                          return DataRow(cells: [
                            DataCell(Text(city.id.toString(), style: TextStyle(fontFamily: 'FontMain'))),
                            DataCell(Text(city.cityName, style: TextStyle(fontFamily: 'FontMain'))),
                            DataCell(Text(city.stateId.toString(), style: TextStyle(fontFamily: 'FontMain'))),
                            DataCell(Text(city.createdBy ?? "Unknown", style: TextStyle(fontFamily: 'FontMain'))),
                            DataCell(Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit,
                                      color: Colors.blue),
                                  onPressed: () {
                                    _cityNameController.text = city.cityName;
                                    _createdByController.text =
                                        city.createdBy ?? "Admin";
                                    _selectedStateId = city.stateId;
                                    _editingCityId = city.id;
                                    setState(() {});
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete,
                                      color: Colors.red),
                                  onPressed: () => _deleteCity(city.id),
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
      ),
    );
  }
}
