import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/outline_btn.dart';

class TaxScreen extends StatefulWidget {
  const TaxScreen({Key? key}) : super(key: key);

  @override
  State<TaxScreen> createState() => _TaxScreenState();
}

class _TaxScreenState extends State<TaxScreen> {
  TextEditingController taxCode = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController localTax = TextEditingController();
  TextEditingController centralTax = TextEditingController();
  TextEditingController modelNo = TextEditingController();
  TextEditingController createdDats = TextEditingController();
  TextEditingController createdBy = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  final List<Map<String, String>> data = [
    {
      "x": "Delete",
      "pen": "Edit",
      "taxMode": "Local",
      "TaxDesc": "Tax Desc",
      "CentralTax": "Central Tax",
      "LocalTax": "Local Tax"
    },
    {
      "x": "Delete",
      "pen": "Edit",
      "taxMode": "Local",
      "TaxDesc": "Tax Desc",
      "CentralTax": "Central Tax",
      "LocalTax": "Local Tax"
    },
    {
      "x": "Delete",
      "pen": "Edit",
      "taxMode": "Local",
      "TaxDesc": "Tax Desc",
      "CentralTax": "Central Tax",
      "LocalTax": "Local Tax"
    },
  ];

  final List<Map<String, String>> taxModeType = [
    {"id": "", "name": "Select Mode"},
    {"id": "1", "name": "Local"},
    {"id": "2", "name": "International"},
  ];
  var selectedTaxMode;
  final List<Map<String, String>> activeList = [
    {"id": "1", "name": "Yes"},
    {"id": "2", "name": "No"},
  ];
  var selectedType;
  final List<Map<String, String>> applicableList = [
    {"id": "", "name": "Select"},
    {"id": "1", "name": "All"},
    {"id": "2", "name": "Only Members"},
    {"id": "3", "name": "Only Staff"},
  ];
  var selectedList;
  final List<Map<String, String>> negativeStock = [
    {"id": "1", "name": "Yes"},
    {"id": "2", "name": "No"},
  ];
  var selectedNegativeStock;

  final List<Map<String, String>> showTaxVal = [
    {"id": "", "name": "Select"},
    {"id": "1", "name": "Profit"},
    {"id": "2", "name": "Loss"},
    {"id": "3", "name": "Profit & Loss"},
  ];
  var selectedTaxVal;

  DateTime? pickedDate;

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tax',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'FontMain')),
                    ],
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: CustomTextField(
                                              controller: taxCode,
                                              ddName: 'Tax Code',
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Expanded(
                                            child: CustomDropdown(
                                              ddName: 'Tax Mode',
                                              items: taxModeType,
                                              value: selectedTaxMode,
                                              onChanged: (newValue) {
                                                setState(() {
                                                  selectedTaxMode = newValue;
                                                  print(
                                                      " Selected Mode:$selectedTaxMode");
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Description',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'FontMain',
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          TextField(
                                            controller: description,
                                            maxLines: 3,
                                            decoration: const InputDecoration(
                                              hintText: ' ',
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
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: CustomTextField(
                                              controller: centralTax,
                                              ddName: 'Central Tax',
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: CustomTextField(
                                              controller: localTax,
                                              ddName: 'Local Tax',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                              ),
                              const SizedBox(width: 16),
                              // Right Column
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    CustomDropdown(
                                      ddName: 'Active',
                                      items: activeList,
                                      value: selectedType,
                                      onChanged: (newValue) {
                                        setState(() {
                                          selectedType = newValue;
                                          print(
                                              " Selected Type :$selectedType");
                                        });
                                      },
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomDropdown(
                                            ddName: 'Applicable for',
                                            items: applicableList,
                                            value: selectedList,
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedList = newValue;
                                                print(
                                                    " Selected Gender :$selectedList");
                                              });
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: CustomDropdown(
                                            ddName: 'Applicable for all',
                                            items: negativeStock,
                                            value: selectedNegativeStock,
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedNegativeStock =
                                                    newValue;
                                                print(
                                                    " Selected   :$selectedNegativeStock");
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 14,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomDropdown(
                                            ddName:
                                                'Show tax values at display',
                                            items: showTaxVal,
                                            value: selectedTaxVal,
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedTaxVal = newValue;
                                                print(
                                                    " Selected Tax value  :$selectedTaxVal");
                                              });
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: CustomTextField(
                                            controller: createdDats,
                                            ddName: 'Created Date',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    CustomTextField(
                                      controller: createdBy,
                                      ddName: 'Created By',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      DataTable(
                        border: TableBorder.all(color: Colors.black45),
                        columnSpacing: 33,
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'Edit',
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Delete',
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Tax Mode',
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Tax Desc',
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Central Tax',
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Local Tax',
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                        rows: data
                            .map(
                              (item) => DataRow(
                                cells: <DataCell>[
                                  DataCell(
                                    IconButton(
                                      icon: const FaIcon(
                                        FontAwesomeIcons.pen,
                                        size: 9,
                                      ),
                                      onPressed: () {
                                        // Add edit functionality here
                                      },
                                    ),
                                  ),
                                  DataCell(
                                    IconButton(
                                      icon: const FaIcon(
                                        FontAwesomeIcons.xmark,
                                        size: 11,
                                      ),
                                      onPressed: () {
                                        // Add delete functionality here
                                      },
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      item['taxMode'] ?? "",
                                      style: const TextStyle(
                                        fontFamily: 'FontMain',
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      item['TaxDesc'] ?? "",
                                      style: const TextStyle(
                                        fontFamily: 'FontMain',
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      item['CentralTax'] ?? "",
                                      style: const TextStyle(
                                        fontFamily: 'FontMain',
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      item['LocalTax'] ?? "",
                                      style: const TextStyle(
                                        fontFamily: 'FontMain',
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
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
