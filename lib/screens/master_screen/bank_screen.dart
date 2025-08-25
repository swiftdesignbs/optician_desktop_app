import 'package:flutter/material.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';

class BankScreen extends StatefulWidget {
  const BankScreen({super.key});

  @override
  State<BankScreen> createState() => _BankScreenState();
}

class _BankScreenState extends State<BankScreen> {
  final AppDatabase db = AppDatabase();

  // Controllers
  final TextEditingController _bankNameController = TextEditingController();
  final TextEditingController _accountNoController = TextEditingController();
  final TextEditingController _accountNameController = TextEditingController();
  final TextEditingController _abbreviationController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _ifscController = TextEditingController();
  final TextEditingController _swiftController = TextEditingController();
  final TextEditingController _createdByController =
      TextEditingController(text: "Admin");

  int? _selectedStateId;
  int? _selectedCityId;
  int? _editingBankId;

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

  Future<void> _addOrUpdateBank() async {
    if (_bankNameController.text.isEmpty ||
        _accountNoController.text.isEmpty ||
        _accountNameController.text.isEmpty ||
        _selectedStateId == null ||
        _selectedCityId == null) return;

    if (_editingBankId == null) {
      await db.insertBank(BanksCompanion.insert(
        bankName: _bankNameController.text,
        accountNo: _accountNoController.text,
        accountName: _accountNameController.text,
        abbreviation: drift.Value(_abbreviationController.text),
        address: drift.Value(_addressController.text),
        pincode: drift.Value(_pincodeController.text),
        mobile: drift.Value(_mobileController.text),
        email: drift.Value(_emailController.text),
        ifsc: drift.Value(_ifscController.text),
        swiftCode: drift.Value(_swiftController.text),
        stateId: _selectedStateId!,
        cityId: _selectedCityId!,
        createdBy: drift.Value(_createdByController.text),
      ));
    } else {
      await db.updateBank(Bank(
        id: _editingBankId!,
        bankName: _bankNameController.text,
        accountNo: _accountNoController.text,
        accountName: _accountNameController.text,
        abbreviation: _abbreviationController.text,
        address: _addressController.text,
        pincode: _pincodeController.text,
        mobile: _mobileController.text,
        email: _emailController.text,
        ifsc: _ifscController.text,
        swiftCode: _swiftController.text,
        stateId: _selectedStateId!,
        cityId: _selectedCityId!,
        createdBy: _createdByController.text,
        createdDate: DateTime.now(),
      ));
      _editingBankId = null;
    }

    // Reset form
    _bankNameController.clear();
    _accountNoController.clear();
    _accountNameController.clear();
    _abbreviationController.clear();
    _addressController.clear();
    _pincodeController.clear();
    _mobileController.clear();
    _emailController.clear();
    _ifscController.clear();
    _swiftController.clear();
    _createdByController.text = "Admin";
    _selectedStateId = null;
    _selectedCityId = null;
    _cities = [];
    setState(() {});
  }

  Future<void> _deleteBank(int id) async {
    await db.deleteBank(id);
    setState(() {});
  }

  void _editBank(Bank bank) {
    _editingBankId = bank.id;
    _bankNameController.text = bank.bankName;
    _accountNoController.text = bank.accountNo;
    _accountNameController.text = bank.accountName;
    _abbreviationController.text = bank.abbreviation ?? "";
    _addressController.text = bank.address ?? "";
    _pincodeController.text = bank.pincode ?? "";
    _mobileController.text = bank.mobile ?? "";
    _emailController.text = bank.email ?? "";
    _ifscController.text = bank.ifsc ?? "";
    _swiftController.text = bank.swiftCode ?? "";
    _createdByController.text = bank.createdBy ?? "Admin";
    _selectedStateId = bank.stateId;
    _loadCities(bank.stateId).then((_) {
      _selectedCityId = bank.cityId;
      setState(() {});
    });
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
                  final fieldWidth = (constraints.maxWidth - 32) /
                      3; // 16 padding left+right, 16 spacing

                  return Wrap(
                    spacing: 16,
                    runSpacing: 8,
                    children: [
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _bankNameController,
                            ddName: "Bank Name"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _accountNoController,
                            ddName: "Account No"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _accountNameController,
                            ddName: "Account Name"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _abbreviationController,
                            ddName: "Abbreviation"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _pincodeController, ddName: "Pincode"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _mobileController, ddName: "Mobile"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _emailController, ddName: "Email"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _ifscController, ddName: "IFSC"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _swiftController, ddName: "SWIFT Code"),
                      ),
                      SizedBox(
                        width: fieldWidth,
                        child: CustomTextField(
                            controller: _createdByController,
                            ddName: "Created By"),
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
                                  .stateName ??
                              "",
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
                  );
                },
              ),
            ),

            const SizedBox(height: 16),
            Buttons(
              onPressed: _addOrUpdateBank,
              ddName: _editingBankId == null ? 'Submit' : 'Update',
              height: 40,
              width: 120,
              colors: const Color(0xff5793CE),
            ),

            const SizedBox(height: 16),

            // Data Table Section
            Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: FutureBuilder(
                    future: Future.wait([
                      db.getAllBanks(),
                      db.getAllCities(), // Fetch all cities from DB
                    ]),
                    builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                      if (!snapshot.hasData)
                        return const Center(child: CircularProgressIndicator());

                      final banks = snapshot.data![0] as List<Bank>;
                      final allCities = snapshot.data![1] as List<City>;

                      if (banks.isEmpty)
                        return const Center(
                            child: Text(
                          "No banks added yet",
                          style: TextStyle(fontFamily: 'FontMain'),
                        ));

                      return DataTable(
                        border: TableBorder.all(color: Colors.grey.shade300),
                        columns: const [
                          DataColumn(
                              label: Text("ID",
                                  style: TextStyle(fontFamily: 'FontMain'))),
                          DataColumn(
                              label: Text("Bank Name",
                                  style: TextStyle(fontFamily: 'FontMain'))),
                          DataColumn(
                              label: Text("Account No",
                                  style: TextStyle(fontFamily: 'FontMain'))),
                          DataColumn(
                              label: Text("Account Name",
                                  style: TextStyle(fontFamily: 'FontMain'))),
                          // DataColumn(
                          //     label: Text("State",
                          //         style: TextStyle(fontFamily: 'FontMain'))),
                          // DataColumn(
                          //     label: Text("City",
                          //         style: TextStyle(fontFamily: 'FontMain'))),
                          DataColumn(
                              label: Text("Actions",
                                  style: TextStyle(fontFamily: 'FontMain'))),
                        ],
                        rows: banks.map((bank) {
                          final stateName = _states
                              .firstWhere((s) => s.id == bank.stateId,
                                  orElse: () => RajyaData(
                                      id: 0,
                                      stateName: "Unknown",
                                      createdDate: DateTime.now()))
                              .stateName;

                          final cityName = allCities
                              .firstWhere((c) => c.id == bank.cityId,
                                  orElse: () => City(
                                      id: 0,
                                      cityName: "Unknown",
                                      stateId: 0,
                                      createdDate: DateTime.now()))
                              .cityName;

                          return DataRow(cells: [
                            DataCell(Text(bank.id.toString(),
                                style: TextStyle(fontFamily: 'FontMain'))),
                            DataCell(Text(bank.bankName,
                                style: TextStyle(fontFamily: 'FontMain'))),
                            DataCell(Text(bank.accountNo,
                                style: TextStyle(fontFamily: 'FontMain'))),
                            DataCell(Text(bank.accountName,
                                style: TextStyle(fontFamily: 'FontMain'))),
                            // DataCell(Text(stateName,style: TextStyle(fontFamily: 'FontMain'))),
                            // DataCell(Text(cityName,style: TextStyle(fontFamily: 'FontMain'))),
                            DataCell(Row(
                              children: [
                                IconButton(
                                    icon: const Icon(Icons.edit,
                                        color: Colors.blue),
                                    onPressed: () => _editBank(bank)),
                                IconButton(
                                    icon: const Icon(Icons.delete,
                                        color: Colors.red),
                                    onPressed: () async =>
                                        await _deleteBank(bank.id)),
                              ],
                            )),
                          ]);
                        }).toList(),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
