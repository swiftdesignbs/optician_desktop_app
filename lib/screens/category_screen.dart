import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/outline_btn.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TextEditingController productCode = TextEditingController();
  TextEditingController descrption = TextEditingController();
  TextEditingController commission = TextEditingController();
  TextEditingController classification = TextEditingController();
  TextEditingController dpt = TextEditingController();
  TextEditingController dst = TextEditingController();
  TextEditingController createdBy = TextEditingController();
  TextEditingController createdDate = TextEditingController();

  final List<Map<String, String>> data = [
    {
      "prodCode": "PRODUCT_984994",
      "description": "description_1",
      "comm": "hello",
      "billing": "Yes"
    },
    {
      "prodCode": "PRODUCT_984994",
      "description": "description_2",
      "comm": "hello",
      "billing": "Yes"
    },
    {
      "prodCode": "PRODUCT_984994",
      "description": "description_3",
      "comm": "hello",
      "billing": "No"
    },
    {
      "prodCode": "PRODUCT_984994",
      "description": "description_4",
      "comm": "hello",
      "billing": "Yes"
    },
  ];

  final List<Map<String, String>> biilingAllowd = [
    {"id": "", "name": "Select Number"},
    {"id": "1", "name": " 1"},
    {"id": "2", "name": " 2"},
    {"id": "3", "name": " 3"},
    {"id": "4", "name": " 4"},
  ];
  var selectedNumber;
  final List<Map<String, String>> maintainQty = [
    {"id": "", "name": "Select"},
    {"id": "1", "name": "Yes"},
    {"id": "2", "name": "  No"},
  ];
  var selectedQty;
  @override
  void initState() {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Category',
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: CustomTextField(
                                            controller: productCode,
                                            ddName: 'Category Code',
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: CustomTextField(
                                            controller: descrption,
                                            ddName: 'Description',
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Commission',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'FontMain',
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        TextField(
                                          controller: commission,
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
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomTextField(
                                            controller: classification,
                                            ddName: 'Classification',
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: CustomDropdown(
                                            ddName: 'Allow Billing',
                                            items: biilingAllowd,
                                            value: selectedQty,
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedQty = newValue;
                                                print(
                                                    " Selected Qty :$selectedQty");
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomDropdown(
                                            ddName: 'Maintain Single Qty',
                                            items: biilingAllowd,
                                            value: selectedNumber,
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedNumber = newValue;
                                                print(
                                                    " Selected Number :$selectedNumber");
                                              });
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: CustomTextField(
                                            controller: dpt,
                                            ddName: 'Default Sales Tax',
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: CustomTextField(
                                            controller: dst,
                                            ddName: 'Default Sales Tax',
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: CustomTextField(
                                            controller: createdBy,
                                            ddName: 'Created By',
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomTextField(
                                      controller: createdDate,
                                      ddName: 'Created Date',
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
                                    const Text(
                                      'Product Table',
                                      style: TextStyle(
                                          fontFamily: 'FontMain',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 3),
                                    DataTable(
                                      border: TableBorder.all(
                                          color: Colors.black45),
                                      columnSpacing: 15,
                                      columns: const <DataColumn>[
                                        DataColumn(
                                          label: Text(
                                            'Edits',
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
                                            'ProductCatCode',
                                            style: TextStyle(
                                              fontFamily: 'FontMain',
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Description',
                                            style: TextStyle(
                                              fontFamily: 'FontMain',
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Comm',
                                            style: TextStyle(
                                              fontFamily: 'FontMain',
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Billing',
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
                                                    item['prodCode']!,
                                                    style: const TextStyle(
                                                      fontFamily: 'FontMain',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                DataCell(
                                                  Text(
                                                    item['description']!,
                                                    style: const TextStyle(
                                                      fontFamily: 'FontMain',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                DataCell(
                                                  Text(
                                                    item['comm']!,
                                                    style: const TextStyle(
                                                      fontFamily: 'FontMain',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                DataCell(
                                                  Text(
                                                    item['billing']!,
                                                    style: const TextStyle(
                                                      fontFamily: 'FontMain',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                          .toList(),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Buttons(
                                            onPressed: () {},
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
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
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
