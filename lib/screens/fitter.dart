import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/outline_btn.dart';

class FitterScreen extends StatefulWidget {
  const FitterScreen({Key? key}) : super(key: key);

  @override
  State<FitterScreen> createState() => _FitterScreenState();
}

class _FitterScreenState extends State<FitterScreen> {
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
  TextEditingController dateinput = TextEditingController();

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
  var selectedState;
  final List<Map<String, String>> cityType = [
    {"id": "", "name": "Select City"},
    {"id": "1", "name": "Mumbai"},
    {"id": "2", "name": "New Delhi"},
  ];
  var selectedCity;

  DateTime? pickedDate;
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar: AppBar(title: const Text("Fitter")),
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
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Created Date',
                                                style: TextStyle(
                                                  fontFamily: 'FontMain',
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              SizedBox(
                                                height: 30,
                                                child: TextFormField(
                                                  style: const TextStyle(
                                                    fontFamily: 'FontMain',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  controller: dateinput,
                                                  readOnly: true,
                                                  onTap: () async {
                                                    pickedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          DateTime.now(),
                                                      firstDate: DateTime(1900),
                                                      lastDate: DateTime(2900),
                                                    );
                                                    if (pickedDate != null) {
                                                      setState(() {
                                                        dateinput
                                                            .text = DateFormat(
                                                                'dd-MM-yyyy')
                                                            .format(
                                                                pickedDate!);
                                                      });
                                                    }
                                                  },
                                                  decoration:
                                                      const InputDecoration(
                                                    suffixIcon: Icon(
                                                      Icons
                                                          .calendar_month_rounded,
                                                      color: Colors.grey,
                                                    ),
                                                    alignLabelWithHint: true,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 217, 215, 215),
                                                        width: 0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.zero,
                                                    ),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.zero,
                                                    ),
                                                    hintStyle: TextStyle(
                                                      fontFamily: 'FontMain',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 400,
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
                        border: TableBorder.all(),
                        columnSpacing: 30,
                        columns: const [
                          DataColumn(
                            label: Center(
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  fontFamily: 'FontMain',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Center(
                              child: Text(
                                'Delete',
                                style: TextStyle(
                                  fontFamily: 'FontMain',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Center(
                              child: Text(
                                'First Name',
                                style: TextStyle(
                                  fontFamily: 'FontMain',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Center(
                              child: Text(
                                'Telephone No',
                                style: TextStyle(
                                  fontFamily: 'FontMain',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Center(
                              child: Text(
                                'Basic Fees',
                                style: TextStyle(
                                  fontFamily: 'FontMain',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Center(
                              child: Text(
                                'Landline No',
                                style: TextStyle(
                                  fontFamily: 'FontMain',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                        rows: data.map((item) {
                          return DataRow(cells: [
                            DataCell(
                              Center(
                                child: FaIcon(
                                  FontAwesomeIcons.pen,
                                  size: 9,
                                ),
                              ),
                            ),
                            DataCell(
                              Center(
                                child: FaIcon(
                                  FontAwesomeIcons.times,
                                  size: 9,
                                ),
                              ),
                            ),
                            DataCell(
                              Center(
                                child: Text(
                                  item['First Name'] ?? '',
                                  style: const TextStyle(
                                    fontFamily: 'FontMain',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Center(
                                child: Text(
                                  item['Telephone No'] ?? '',
                                  style: const TextStyle(
                                    fontFamily: 'FontMain',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Center(
                                child: Text(
                                  item['Basic Fees'] ?? '',
                                  style: const TextStyle(
                                    fontFamily: 'FontMain',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Center(
                                child: Text(
                                  item['Landline No'] ?? '',
                                  style: const TextStyle(
                                    fontFamily: 'FontMain',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ]);
                        }).toList(),
                      ),
                    ],
                  ),
                ],
              ));
        },
      ),
    );
  }

  // Widget buildTextField(String label, TextEditingController controller) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(label,
  //           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
  //       const SizedBox(height: 4),
  //       TextFormField(
  //         controller: controller,
  //         style: const TextStyle(fontSize: 12),
  //         decoration: const InputDecoration(
  //           isDense: true,
  //           contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
  //           border: OutlineInputBorder(),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // Widget buildDateField(BuildContext context) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       const Text("Date",
  //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
  //       const SizedBox(height: 4),
  //       SizedBox(
  //         width: double.infinity,
  //         child: TextFormField(
  //           controller: dateinput,
  //           readOnly: true,
  //           onTap: () async {
  //             DateTime? pickedDate = await showDatePicker(
  //               context: context,
  //               initialDate: DateTime.now(),
  //               firstDate: DateTime(2000),
  //               lastDate: DateTime(2101),
  //             );
  //             if (pickedDate != null) {
  //               setState(() {
  //                 dateinput.text = DateFormat('yyyy-MM-dd').format(pickedDate);
  //               });
  //             }
  //           },
  //           style: const TextStyle(fontSize: 12),
  //           decoration: const InputDecoration(
  //             isDense: true,
  //             contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
  //             border: OutlineInputBorder(),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // Widget buildDropdown(String label, List<String> items, String? value,
  //     void Function(String?) onChanged) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(label,
  //           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
  //       const SizedBox(height: 4),
  //       DropdownButtonFormField<String>(
  //         value: value,
  //         onChanged: onChanged,
  //         isDense: true,
  //         style: const TextStyle(fontSize: 12, color: Colors.black),
  //         decoration: const InputDecoration(
  //           contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
  //           border: OutlineInputBorder(),
  //         ),
  //         items: items
  //             .map((e) => DropdownMenuItem(value: e, child: Text(e)))
  //             .toList(),
  //       ),
  //     ],
  //   );
  // }

  Widget buildProductTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 15,
        border: TableBorder.all(color: Colors.black45),
        columns: const [
          DataColumn(label: Text("Edit", style: TextStyle(fontSize: 10))),
          DataColumn(label: Text("Delete", style: TextStyle(fontSize: 10))),
          DataColumn(label: Text("ProdCode", style: TextStyle(fontSize: 10))),
          DataColumn(label: Text("ProdName", style: TextStyle(fontSize: 10))),
        ],
        rows: data
            .map(
              (item) => DataRow(
                cells: [
                  DataCell(IconButton(
                    icon: const FaIcon(FontAwesomeIcons.pen, size: 10),
                    onPressed: () {},
                  )),
                  DataCell(IconButton(
                    icon: const FaIcon(FontAwesomeIcons.xmark, size: 12),
                    onPressed: () {},
                  )),
                  DataCell(Text(item["prodCode"] ?? "",
                      style: const TextStyle(fontSize: 10))),
                  DataCell(Text(item["prodName"] ?? "",
                      style: const TextStyle(fontSize: 10))),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
