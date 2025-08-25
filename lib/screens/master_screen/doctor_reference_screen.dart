import 'package:flutter/material.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';

class DoctorReferenceScreen extends StatefulWidget {
  const DoctorReferenceScreen({super.key});

  @override
  State<DoctorReferenceScreen> createState() => _DoctorReferenceScreenState();
}

class _DoctorReferenceScreenState extends State<DoctorReferenceScreen> {
  final AppDatabase db = AppDatabase();

  // Controllers
  final TextEditingController _doctorNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _commissionController = TextEditingController();
  final TextEditingController _createdByController =
      TextEditingController(text: "Admin");

  int? _selectedStateId;
  int? _selectedCityId;
  int? _editingDoctorId;

  List<RajyaData> _states = [];
  List<City> _cities = [];

  @override
  void initState() {
    super.initState();
    _loadStates();
  }

  Future<void> _loadStates() async {
    _states = await db.getAllRajya();
    setState(() {});
  }

  Future<void> _loadCities(int stateId) async {
    _cities = await db.getCitiesByRajya(stateId);
    setState(() {});
  }

  Future<void> _addOrUpdateDoctor() async {
    if (_doctorNameController.text.isEmpty ||
        _selectedStateId == null ||
        _selectedCityId == null) return;

    if (_editingDoctorId == null) {
      // Insert new doctor
      await db.insertDoctor(DoctorReferenceCompanion.insert(
        doctorName: _doctorNameController.text,
        address: _addressController.text,
        pincode: drift.Value(_pincodeController.text),
        commision: _commissionController.text,
        stateId: _selectedStateId!,
        cityId: _selectedCityId!,
        createdBy: drift.Value(_createdByController.text),
      ));
    } else {
      // Update existing doctor
      await db.updateDoctor(DoctorReferenceData(
        id: _editingDoctorId!,
        doctorName: _doctorNameController.text,
        address: _addressController.text,
        pincode: _pincodeController.text,
        commision: _commissionController.text,
        stateId: _selectedStateId!,
        cityId: _selectedCityId!,
        createdBy: _createdByController.text,
        createdDate: DateTime.now(),
      ));
      _editingDoctorId = null;
    }

    _resetForm();
  }

  Future<void> _deleteDoctor(int id) async {
    await db.deleteDoctor(id);
    setState(() {});
  }

  void _editDoctor(DoctorReferenceData doctor) {
    _editingDoctorId = doctor.id;
    _doctorNameController.text = doctor.doctorName;
    _addressController.text = doctor.address;
    _pincodeController.text = doctor.pincode ?? "";
    _commissionController.text = doctor.commision;
    _createdByController.text = doctor.createdBy ?? "Admin";
    _selectedStateId = doctor.stateId;

    _loadCities(doctor.stateId).then((_) {
      _selectedCityId = doctor.cityId;
      setState(() {});
    });
  }

  void _resetForm() {
    _doctorNameController.clear();
    _addressController.clear();
    _pincodeController.clear();
    _commissionController.clear();
    _createdByController.text = "Admin";
    _selectedStateId = null;
    _selectedCityId = null;
    _cities = [];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Form Grid: 3 fields per row
            SingleChildScrollView(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final fieldWidth = (constraints.maxWidth - 32) / 3;

                  return Wrap(
                    spacing: 16,
                    runSpacing: 8,
                    children: [
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _doctorNameController,
                            ddName: "Doctor Name"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _addressController, ddName: "Address"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _commissionController,
                            ddName: "Commission"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _pincodeController, ddName: "Pincode"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomDropdown(
                          ddName: "Select State",
                          value: _states
                              .firstWhere((s) => s.id == _selectedStateId,
                                  orElse: () => RajyaData(
                                      id: 0,
                                      stateName: "",
                                      createdDate: DateTime.now()))
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
                                    stateName: "",
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
                      SizedBox(
                        width: fieldWidth,
                        child: CustomDropdown(
                          ddName: "Select City",
                          value: _cities
                              .firstWhere(
                                (c) => c.id == _selectedCityId,
                                orElse: () => City(
                                    id: 0,
                                    cityName: "",
                                    stateId: 0,
                                    createdDate: DateTime.now()),
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
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _createdByController,
                            ddName: "Created By"),
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 16),
            Buttons(
              onPressed: _addOrUpdateDoctor,
              ddName: _editingDoctorId == null ? 'Submit' : 'Update',
              height: 40,
              width: 120,
              colors: const Color(0xff5793CE),
            ),

            const SizedBox(height: 16),

            // Data Table Section
            Expanded(
              child: FutureBuilder<List<dynamic>>(
                future: Future.wait([
                  db.getAllDoctors(), // all doctors
                  db.getAllCities(), // all cities
                ]),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return const Center(child: CircularProgressIndicator());

                  final doctors =
                      snapshot.data![0] as List<DoctorReferenceData>;
                  final allCities = snapshot.data![1] as List<City>;

                  if (doctors.isEmpty)
                    return const Center(
                        child: Text("No doctors added yet",
                            style: TextStyle(fontFamily: 'FontMain')));

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      border: TableBorder.all(color: Colors.grey.shade300),
                      columns: const [
                        DataColumn(
                            label: Text("ID",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Doctor Name",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Address",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        // DataColumn(
                        //     label: Text("State",
                        //         style: TextStyle(fontFamily: 'FontMain'))),
                        // DataColumn(
                        //     label: Text("City",
                        //         style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Commission",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Pincode",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Actions",
                                style: TextStyle(fontFamily: 'FontMain'))),
                      ],
                      rows: doctors.map((doctor) {
                        final stateName = _states
                            .firstWhere((s) => s.id == doctor.stateId,
                                orElse: () => RajyaData(
                                    id: 0,
                                    stateName: "Unknown",
                                    createdDate: DateTime.now()))
                            .stateName;

                        final cityName = allCities
                            .firstWhere((c) => c.id == doctor.cityId,
                                orElse: () => City(
                                    id: 0,
                                    cityName: "Unknown",
                                    stateId: 0,
                                    createdDate: DateTime.now()))
                            .cityName;

                        return DataRow(cells: [
                          DataCell(Text(doctor.id.toString(),
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(doctor.doctorName,
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(doctor.address,
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          // DataCell(Text(stateName,
                          //     style: const TextStyle(fontFamily: 'FontMain'))),
                          // DataCell(Text(cityName,
                          //     style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(doctor.commision,
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Text(doctor.pincode ?? "",
                              style: const TextStyle(fontFamily: 'FontMain'))),
                          DataCell(Row(
                            children: [
                              IconButton(
                                  icon: const Icon(Icons.edit,
                                      color: Colors.blue),
                                  onPressed: () => _editDoctor(doctor)),
                              IconButton(
                                  icon: const Icon(Icons.delete,
                                      color: Colors.red),
                                  onPressed: () async =>
                                      await _deleteDoctor(doctor.id)),
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
