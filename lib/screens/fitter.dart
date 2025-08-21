import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optician_desktop_app/data/app_database.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/outline_btn.dart';
import 'package:drift/drift.dart' as drift;

class FitterScreen extends StatefulWidget {
  const FitterScreen({Key? key}) : super(key: key);

  @override
  State<FitterScreen> createState() => _FitterScreenState();
}

class _FitterScreenState extends State<FitterScreen> {
  final AppDatabase db = AppDatabase();
  List<Fitter> _savedFitter = [];
  TextEditingController fitterCode = TextEditingController();
  TextEditingController fitterName = TextEditingController();
  TextEditingController address1 = TextEditingController();
  TextEditingController telephone = TextEditingController();
  TextEditingController landline = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController days = TextEditingController();
  TextEditingController fees = TextEditingController();
  TextEditingController createdBy = TextEditingController();

  final List<Map<String, String>> data = [
    {
      "Edit": "pen icon",
      "Delete": "xmark icon",
      "First Name": "John Doe",
      "Telephone No": "9900887766",
      "Basic Fees": "1400.00",
      "Landline No": "123456"
    },
  ];

  final List<Map<String, String>> stateType = [
    {"id": "", "name": "Select Brand"},
    {"id": "1", "name": "Maharashtra"},
    {"id": "2", "name": "Haryana"},
  ];
  String? selectedState;
  final List<Map<String, String>> cityType = [
    {"id": "", "name": "Select City"},
    {"id": "1", "name": "Mumbai"},
    {"id": "2", "name": "New Delhi"},
  ];
  String? selectedCity;

  DateTime? pickedDate;
  int? _editingId;
  @override
  void initState() {
    super.initState();
    _loadFitters();
  }

  void _resetForm() {
    fitterName.clear();
    fitterCode.clear();
    address1.clear();
    email.clear();
    pincode.clear();
    fees.clear();
    telephone.clear();
    landline.clear();
    days.clear();
    createdBy.clear();

    selectedCity = null;
    selectedState = null;
  }

  Future<void> _loadFitters() async {
    final fitterList = await db.getAllFitters();
    setState(() {
      _savedFitter = fitterList;
    });
  }

  Future<void> _saveOrUpdateFitter() async {
    if (fitterCode.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Fitter code is required')),
      );
      return;
    }

    final fitterCompanion = FittersCompanion(
      fitterName: drift.Value(fitterName.text.trim()),
      fitterCode: drift.Value(fitterCode.text.trim()),
      address1: drift.Value(address1.text.trim()),
      state: drift.Value(selectedState?.trim() ?? ''),
      city: drift.Value(selectedCity?.trim() ?? ''),
      telephone: drift.Value(telephone.text ?? ''),
      landline: drift.Value(landline.text.trim()),
      email: drift.Value(email.text.trim()),
      createdBy: drift.Value(createdBy.text.trim()),
      pincode: drift.Value(pincode.text.trim()),
      days: drift.Value(int.tryParse(days.text.trim()) ?? 0),
      fees: drift.Value(double.tryParse(fees.text.trim()) ?? 0.0),
      createdDate: drift.Value(DateTime.now()),
    );

    if (_editingId == null) {
      await db.insertFitter(fitterCompanion);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Fitter added successfully!')),
      );
    } else {
      await db.updateFitter(Fitter(
        id: _editingId!,
        fitterName: fitterCompanion.fitterName.value,
        fitterCode: fitterCompanion.fitterCode.value,
        address1: fitterCompanion.address1.value,
        state: fitterCompanion.state.value,
        city: fitterCompanion.city.value,
        telephone: fitterCompanion.telephone.value,
        landline: fitterCompanion.landline.value,
        email: fitterCompanion.email.value,
        pincode: fitterCompanion.pincode.value,
        days: fitterCompanion.days.value,
        fees: fitterCompanion.fees.value,
        createdBy: fitterCompanion.createdBy.value,
        // Assuming createdDate is not editable
        createdDate: DateTime.now(),
      ));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Fitter updated successfully!')),
      );
    }

    _resetForm();
    await _loadFitters();
  }

  Future<void> _deleteFitter(int id) async {
    await db.deleteFitter(id);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Fitter deleted successfully!')),
    );
    await _loadFitters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fitter',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'FontMain',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Form Section (2 columns)
                        Expanded(
                          flex: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Left Column
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 400,
                                      child: CustomTextField(
                                        controller: fitterName,
                                        ddName: 'Fitter Name',
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    SizedBox(
                                      width: 400,
                                      child: CustomTextField(
                                        controller: fitterCode,
                                        ddName: 'Fitter Code',
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    SizedBox(
                                      width: 400,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Address1',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'FontMain',
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          TextField(
                                            controller: address1,
                                            maxLines: 3,
                                            decoration: const InputDecoration(
                                              hintText: 'Enter your text here',
                                              hintStyle: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'FontMain',
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 217, 215, 215),
                                                  width: 1,
                                                ),
                                                borderRadius: BorderRadius.zero,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.zero,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomDropdown(
                                            ddName: 'State',
                                            items: stateType,
                                            value: selectedState,
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedState = newValue;
                                              });
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: CustomDropdown(
                                            ddName: 'City',
                                            items: cityType,
                                            value: selectedCity,
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedCity = newValue;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomTextField(
                                            controller: telephone,
                                            ddName: 'Telephone',
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: CustomTextField(
                                            controller: landline,
                                            ddName: 'Landline',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 16),
                              // Right Column
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 400,
                                          child: CustomTextField(
                                            controller: email,
                                            ddName: 'Email',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomTextField(
                                            controller: pincode,
                                            ddName: 'Pincode',
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: CustomTextField(
                                            controller: days,
                                            ddName: 'Number of TurnAround Days',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomTextField(
                                            controller: fees,
                                            ddName: 'Basic Fees',
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: CustomTextField(
                                            controller: createdBy,
                                            ddName: 'Created By',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      DataTable(
                        border: TableBorder.all(color: Colors.black45),
                        columnSpacing: 15,
                        columns: const [
                          DataColumn(
                              label: Text('Edit',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'FontMain',
                                      fontWeight: FontWeight.w600))),
                          DataColumn(
                              label: Text('Delete',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'FontMain',
                                      fontWeight: FontWeight.w600))),
                          DataColumn(
                              label: Text('Fitter Name',
                                  style: TextStyle(
                                      fontSize: 9,
                                      fontFamily: 'FontMain',
                                      fontWeight: FontWeight.w600))),
                          DataColumn(
                              label: Text('Telephone No',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'FontMain',
                                      fontWeight: FontWeight.w600))),
                          DataColumn(
                              label: Text('Basic Fees',
                                  style: TextStyle(
                                      fontSize: 9,
                                      fontFamily: 'FontMain',
                                      fontWeight: FontWeight.w600))),
                          DataColumn(
                              label: Text('Landline No',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'FontMain',
                                      fontWeight: FontWeight.w600))),
                        ],
                        rows: _savedFitter.map((fit) {
                          return DataRow(
                            cells: [
                              DataCell(IconButton(
                                icon: const Icon(Icons.edit, size: 12),
                                onPressed: () {
                                  setState(() {
                                    _editingId = fit.id;
                                    fitterName.text = fit.fitterName;
                                    fitterCode.text = fit.fitterCode;
                                    address1.text = fit.address1 ?? '';
                                    selectedState = fit.state;
                                    selectedCity = fit.city;
                                    telephone.text = fit.telephone ?? '';
                                    landline.text = fit.landline ?? '';
                                    email.text = fit.email ?? '';
                                    pincode.text = fit.pincode ?? '';
                                    days.text = fit.days?.toString() ?? '';
                                    fees.text = fit.fees.toString();
                                    createdBy.text = fit.createdBy ?? '';
                                  });
                                },
                              )),
                              DataCell(
                                IconButton(
                                  icon: const FaIcon(FontAwesomeIcons.xmark,
                                      size: 11),
                                  onPressed: () {
                                    _showDeleteConfirmationDialog(fit.id);
                                  },
                                ),
                              ),
                              DataCell(Text(fit.fitterName,
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'FontMain',
                                      fontWeight: FontWeight.w600))),
                              DataCell(Text(fit.telephone ?? '',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'FontMain',
                                      fontWeight: FontWeight.w600))),
                              DataCell(Text(fit.fees.toString(),
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'FontMain',
                                      fontWeight: FontWeight.w600))),
                              DataCell(Text(fit.landline ?? '',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'FontMain',
                                      fontWeight: FontWeight.w600))),
                            ],
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Buttons(
                          onPressed: () {
                            _saveOrUpdateFitter();
                          },
                          ddName: 'Save',
                          height: 40,
                          width: 70,
                          colors: const Color(0xff5793CE)),
                      const SizedBox(width: 5),
                      OutLineBtn(
                        onPressed: () {},
                        ddName: 'Add New',
                        height: 40,
                        width: 70,
                        colors: const Color(0xff5793CE),
                      ),
                      const SizedBox(width: 5),
                      OutLineBtn(
                        onPressed: () {},
                        ddName: 'Cancel',
                        height: 40,
                        width: 70,
                        colors: const Color(0xff5793CE),
                      ),
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }

  void _showDeleteConfirmationDialog(int fitegoryId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          title: const Text("Confirm Delete",
              style: TextStyle(
                fontFamily: 'FontMain',
                fontWeight: FontWeight.bold,
              )),
          content: const Text("Are you sure you want to delete this Fitter?",
              style: TextStyle(
                fontFamily: 'FontMain',
                fontWeight: FontWeight.bold,
              )),
          actions: [
            OutLineBtn(
              onPressed: () {
                Navigator.of(context).pop(); // close dialog
              },
              ddName: 'Cancel',
              height: 40,
              width: 70,
              colors: const Color(0xff5793CE),
            ),
            Buttons(
                onPressed: () {
                  Navigator.of(context).pop();
                  _deleteFitter(fitegoryId);
                },
                ddName: 'Delete',
                height: 40,
                width: 70,
                colors: const Color(0xff5793CE)),
          ],
        );
      },
    );
  }
}
