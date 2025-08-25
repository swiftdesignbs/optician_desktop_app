import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:drift/drift.dart' as drift;

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  final AppDatabase db = AppDatabase();

  // Controllers
  final TextEditingController siteName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController dlNumber = TextEditingController();
  final TextEditingController cstNumber = TextEditingController();
  final TextEditingController tinNumber = TextEditingController();
  final TextEditingController gstin = TextEditingController();
  final TextEditingController pincode = TextEditingController();
  final TextEditingController mobile = TextEditingController();
  final TextEditingController additionalInfo = TextEditingController();
  final TextEditingController createdBy = TextEditingController(text: "Admin");

  Uint8List? storeImage;
  int? _selectedStateId;
  int? _selectedCityId;
  int? _editingStoreId;

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

  Future<void> _addOrUpdateStore() async {
    if (siteName.text.isEmpty) return;

    if (_editingStoreId == null) {
      await db.insertStore(StoresCompanion.insert(
        siteName: siteName.text,
        email: drift.Value(email.text),
        address: drift.Value(address.text),
        dlNumber: drift.Value(dlNumber.text),
        cstNumber: drift.Value(cstNumber.text),
        tinNumber: drift.Value(tinNumber.text),
        stateId: _selectedStateId!,
        cityId: _selectedCityId!,
        gstin: drift.Value(gstin.text),
        pincode: drift.Value(pincode.text),
        mobile: drift.Value(mobile.text),
        additionalInfo: drift.Value(additionalInfo.text),
        image: drift.Value(storeImage),
        createdBy: drift.Value(createdBy.text),
      ));
    } else {
      await db.updateStore(Store(
        id: _editingStoreId!,
        siteName: siteName.text,
        email: email.text,
        address: address.text,
        dlNumber: dlNumber.text,
        cstNumber: cstNumber.text,
        tinNumber: tinNumber.text,
        stateId: _selectedStateId!,
        cityId: _selectedCityId!,
        gstin: gstin.text,
        pincode: pincode.text,
        mobile: mobile.text,
        additionalInfo: additionalInfo.text,
        image: storeImage,
        createdBy: createdBy.text,
        createdDate: DateTime.now(),
      ));
      _editingStoreId = null;
    }

    // Reset form
    siteName.clear();
    email.clear();
    address.clear();
    dlNumber.clear();
    cstNumber.clear();
    tinNumber.clear();
    gstin.clear();
    pincode.clear();
    mobile.clear();
    additionalInfo.clear();
    createdBy.text = "Admin";
    _selectedStateId = null;
    _selectedCityId = null;
    storeImage = null;
    _cities = [];

    setState(() {});
  }

  Future<void> _deleteStore(int id) async {
    await db.deleteStore(id);
    setState(() {});
  }

  void _editStore(Store store) {
    _editingStoreId = store.id;
    siteName.text = store.siteName;
    email.text = store.email ?? "";
    address.text = store.address ?? "";
    dlNumber.text = store.dlNumber ?? "";
    cstNumber.text = store.cstNumber ?? "";
    tinNumber.text = store.tinNumber ?? "";
    gstin.text = store.gstin ?? "";
    pincode.text = store.pincode ?? "";
    mobile.text = store.mobile ?? "";
    additionalInfo.text = store.additionalInfo ?? "";
    createdBy.text = store.createdBy ?? "Admin";
    _selectedStateId = store.stateId;
    _selectedCityId = store.cityId;
    storeImage = store.image;
    if (store.stateId != null) _loadCities(store.stateId!);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Form
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 16,
                  runSpacing: 8,
                  children: [
                    SizedBox(
                        width: 300,
                        child: CustomTextField(
                            controller: siteName, ddName: "Site Name")),
                    SizedBox(
                        width: 300,
                        child: CustomTextField(
                            controller: email, ddName: "Email")),
                    SizedBox(
                        width: 300,
                        child: CustomTextField(
                            controller: address, ddName: "Address")),
                    SizedBox(
                        width: 300,
                        child: CustomTextField(
                            controller: dlNumber, ddName: "DL Number")),
                    SizedBox(
                        width: 300,
                        child: CustomTextField(
                            controller: cstNumber, ddName: "CST Number")),
                    SizedBox(
                        width: 300,
                        child: CustomTextField(
                            controller: tinNumber, ddName: "TIN Number")),
                    SizedBox(
                      width: 300,
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
                            .map((s) => {'name': s.stateName, 'id': '${s.id}'})
                            .toList(),
                        onChanged: (value) {
                          final selected = _states.firstWhere(
                              (s) => s.stateName == value,
                              orElse: () => RajyaData(
                                  id: 0,
                                  stateName: "",
                                  createdDate: DateTime.now()));
                          _selectedStateId = selected.id;
                          _selectedCityId = null;
                          _cities = [];
                          if (selected.id != 0) _loadCities(selected.id);
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: CustomDropdown(
                        ddName: "Select City",
                        value: _cities
                            .firstWhere((c) => c.id == _selectedCityId,
                                orElse: () => City(
                                    id: 0,
                                    cityName: "",
                                    stateId: 0,
                                    createdDate: DateTime.now()))
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
                          _selectedCityId = selected.id;
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(
                        width: 300,
                        child: CustomTextField(
                            controller: gstin, ddName: "GSTIN")),
                    SizedBox(
                        width: 300,
                        child: CustomTextField(
                            controller: pincode, ddName: "Pincode")),
                    SizedBox(
                        width: 300,
                        child: CustomTextField(
                            controller: mobile, ddName: "Mobile")),
                    SizedBox(
                        width: 300,
                        child: CustomTextField(
                            controller: additionalInfo,
                            ddName: "Additional Info")),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),
            Buttons(
              onPressed: _addOrUpdateStore,
              ddName: _editingStoreId == null ? 'Submit' : 'Update',
              height: 40,
              width: 120,
              colors: const Color(0xff5793CE),
            ),

            const SizedBox(height: 16),

            // Data Table Section
            Expanded(
              child: FutureBuilder<List<Store>>(
                future: db.getAllStores(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return const Center(child: CircularProgressIndicator());

                  final stores = snapshot.data!;
                  if (stores.isEmpty)
                    return const Center(
                        child: Text("No stores added yet",
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
                            label: Text("Site Name",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("GSTIN",
                                style: TextStyle(fontFamily: 'FontMain'))),
                        DataColumn(
                            label: Text("Actions",
                                style: TextStyle(fontFamily: 'FontMain'))),
                      ],
                      rows: stores.map((store) {
                        final stateName = _states
                            .firstWhere((s) => s.id == store.stateId,
                                orElse: () => RajyaData(
                                    id: 0,
                                    stateName: "Unknown",
                                    createdDate: DateTime.now()))
                            .stateName;

                        final cityName = _cities
                            .firstWhere((c) => c.id == store.cityId,
                                orElse: () => City(
                                    id: 0,
                                    cityName: "Unknown",
                                    stateId: 0,
                                    createdDate: DateTime.now()))
                            .cityName;

                        return DataRow(cells: [
                          DataCell(Text(store.id.toString())),
                          DataCell(Text(store.siteName)),
                          DataCell(Text(store.gstin ?? "")),
                          DataCell(Row(
                            children: [
                              IconButton(
                                  icon: const Icon(Icons.edit,
                                      color: Colors.blue),
                                  onPressed: () => _editStore(store)),
                              IconButton(
                                  icon: const Icon(Icons.delete,
                                      color: Colors.red),
                                  onPressed: () async =>
                                      await _deleteStore(store.id)),
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
