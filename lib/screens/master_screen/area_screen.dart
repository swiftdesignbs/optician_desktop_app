import 'package:flutter/material.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';

class AreaScreen extends StatefulWidget {
  const AreaScreen({super.key});

  @override
  State<AreaScreen> createState() => _AreaScreenState();
}

class AreaScreenData {
  final List<Area> areas;
  final List<RajyaData> states;
  final List<City> cities;

  AreaScreenData({
    required this.areas,
    required this.states,
    required this.cities,
  });
}

class _AreaScreenState extends State<AreaScreen> {
  final AppDatabase db = AppDatabase();

  final TextEditingController _areaDescController = TextEditingController();
  final TextEditingController _createdByController =
      TextEditingController(text: "Admin");

  int? _selectedStateId;
  int? _selectedCityId;
  int? _editingAreaId;

  List<RajyaData> _states = [];
  List<City> _cities = [];

  // Load all states
  Future<void> _loadStates() async {
    _states = await db.getAllRajya();
    setState(() {});
  }

  // Load cities by state
  Future<void> _loadCities(int stateId) async {
    _cities = await db.getCitiesByRajya(stateId);
    setState(() {});
  }

  // Add or update area
  Future<void> _addOrUpdateArea() async {
    if (_areaDescController.text.isEmpty ||
        _selectedStateId == null ||
        _selectedCityId == null) return;

    if (_editingAreaId == null) {
      // Add new
      await db.insertArea(AreasCompanion.insert(
        areaDescription: _areaDescController.text,
        stateId: _selectedStateId!,
        cityId: _selectedCityId!,
        createdBy: drift.Value(_createdByController.text),
      ));
    } else {
      // Update existing
      await db.updateArea(Area(
        id: _editingAreaId!,
        areaDescription: _areaDescController.text,
        stateId: _selectedStateId!,
        cityId: _selectedCityId!,
        createdBy: _createdByController.text,
        createdDate: DateTime.now(),
      ));
      _editingAreaId = null;
    }

    // Reset form
    _areaDescController.clear();
    _createdByController.text = "Admin";
    _selectedStateId = null;
    _selectedCityId = null;
    _cities = [];
    setState(() {});
  }

  // Delete area
  Future<void> _deleteArea(int id) async {
    await db.deleteArea(id);
    setState(() {});
  }

  // Edit area
  void _editArea(Area area) {
    _editingAreaId = area.id;
    _areaDescController.text = area.areaDescription;
    _createdByController.text = area.createdBy ?? "Admin";
    _selectedStateId = area.stateId;
    _loadCities(area.stateId).then((_) {
      _selectedCityId = area.cityId;
      setState(() {});
    });
  }

  // Load all data for FutureBuilder
  Future<AreaScreenData> _loadAreaScreenData() async {
    final areas = await db.getAllAreas();
    final states = await db.getAllRajya();
    final cities = await db.getAllCities();
    return AreaScreenData(areas: areas, states: states, cities: cities);
  }

  @override
  void initState() {
    super.initState();
    _loadStates();
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left Column: Area Description (multiline)
                Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Area Description",
                            style: TextStyle(
                              fontFamily: 'FontMain',
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Container(
                           // height: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 217, 215, 215),
                                ),
                                borderRadius: BorderRadius.circular(8)),
                            child: TextFormField(
                              maxLines: 10,
                              textAlignVertical: TextAlignVertical.center,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                              controller: _areaDescController,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 8),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 217, 215, 215),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.zero,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                hintStyle: TextStyle(
                                  fontFamily: 'FontMain',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),

                // Right Column: Created By, State, City
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      // Created By
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: CustomTextField(
                          controller: _createdByController,
                          ddName: "Created By",
                        ),
                      ),

                      // State Dropdown
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: CustomDropdown(
                          ddName: "Select State",
                          value: _states
                              .firstWhere(
                                (s) => s.id == _selectedStateId,
                                orElse: () => RajyaData(
                                  id: 0,
                                  stateName: "Unknown",
                                  createdDate: DateTime.now(),
                                ),
                              )
                              .stateName,
                          items: _states
                              .map(
                                  (s) => {'name': s.stateName, 'id': '${s.id}'})
                              .toList(),
                          onChanged: (value) {
                            final selected = _states.firstWhere(
                                (s) => s.stateName == value,
                                orElse: () => RajyaData(
                                    id: 0,
                                    stateName: "Unknown",
                                    createdDate: DateTime.now()));
                            setState(() {
                              _selectedStateId = selected.id;
                              _selectedCityId = null;
                              _cities = [];
                            });
                            if (selected.id != 0) _loadCities(selected.id);
                          },
                        ),
                      ),

                      // City Dropdown
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: CustomDropdown(
                          ddName: "Select City",
                          value: _cities
                              .firstWhere(
                                (c) => c.id == _selectedCityId,
                                orElse: () => City(
                                  id: 0,
                                  cityName: "",
                                  stateId: 0,
                                  createdDate: DateTime.now(),
                                ),
                              )
                              .cityName,
                          items: _cities
                              .map((c) => {'name': c.cityName, 'id': '${c.id}'})
                              .toList(),
                          onChanged: (value) {
                            final selected = _cities.firstWhere(
                                (c) => c.cityName == value,
                                orElse: () => City(
                                    id: 0,
                                    cityName: "",
                                    stateId: 0,
                                    createdDate: DateTime.now()));
                            setState(() {
                              _selectedCityId = selected.id;
                            });
                          },
                        ),
                      ),
                    ],
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
                  onPressed: _addOrUpdateArea,
                  ddName: _editingAreaId == null ? 'Submit' : 'Update',
                  height: 40,
                  width: 100,
                  colors: const Color(0xff5793CE),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Data Table
            Expanded(
              child: FutureBuilder<AreaScreenData>(
                future: _loadAreaScreenData(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final data = snapshot.data!;
                  final areas = data.areas;
                  final states = data.states;
                  final cities = data.cities;

                  if (areas.isEmpty) {
                    return const Center(child: Text("No areas added yet",style: TextStyle(fontFamily: 'Fontmain'),));
                  }

                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DataTable(
                      border: TableBorder.all(color: Colors.grey.shade300),
                      columns: const [
                        DataColumn(label: Text("ID",style: TextStyle(fontFamily: 'Fontmain'),)),
                        DataColumn(label: Text("Area",style: TextStyle(fontFamily: 'Fontmain'),)),
                        DataColumn(label: Text("State",style: TextStyle(fontFamily: 'Fontmain'),)),
                        DataColumn(label: Text("City",style: TextStyle(fontFamily: 'Fontmain'),)),
                        DataColumn(label: Text("Created By",style: TextStyle(fontFamily: 'Fontmain'),)),
                        DataColumn(label: Text("Actions",style: TextStyle(fontFamily: 'Fontmain'),)),
                      ],
                      rows: areas.map((area) {
                        final stateName = states
                            .firstWhere((s) => s.id == area.stateId,
                                orElse: () => RajyaData(
                                    id: 0,
                                    stateName: "Unknown",
                                    createdDate: DateTime.now()))
                            .stateName;

                        final cityName = cities
                            .firstWhere((c) => c.id == area.cityId,
                                orElse: () => City(
                                    id: 0,
                                    cityName: "Unknown",
                                    stateId: 0,
                                    createdDate: DateTime.now()))
                            .cityName;

                        return DataRow(
                          cells: [
                            DataCell(Text(area.id.toString(),style: const TextStyle(fontFamily: 'Fontmain'),)),
                            DataCell(Text(area.areaDescription,style: const TextStyle(fontFamily: 'Fontmain'),)),
                            DataCell(Text(stateName,style: const TextStyle(fontFamily: 'Fontmain'),)),
                            DataCell(Text(cityName,style: const TextStyle(fontFamily: 'Fontmain'),)),
                            DataCell(Text(area.createdBy ?? "Unknown",style: const TextStyle(fontFamily: 'Fontmain'),)),
                            DataCell(Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit,
                                      color: Colors.blue),
                                  onPressed: () => _editArea(area),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete,
                                      color: Colors.red),
                                  onPressed: () async {
                                    await _deleteArea(area.id);
                                  },
                                ),
                              ],
                            )),
                          ],
                        );
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
