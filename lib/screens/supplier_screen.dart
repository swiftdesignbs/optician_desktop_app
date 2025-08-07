import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/outline_btn.dart';

class SupplierScreen extends StatefulWidget {
  const SupplierScreen({Key? key}) : super(key: key);

  @override
  State<SupplierScreen> createState() => _SupplierScreenState();
}

class _SupplierScreenState extends State<SupplierScreen> {
  TextEditingController supplierCode = TextEditingController();

  TextEditingController supplierName = TextEditingController();

  TextEditingController address1 = TextEditingController();

  TextEditingController address2 = TextEditingController();

  TextEditingController pincode = TextEditingController();

  TextEditingController telephone = TextEditingController();

  TextEditingController fax = TextEditingController();

  var selectedState;

  final List<Map<String, String>> cityType = [
    {"id": "", "name": "Select City"},
    {"id": "1", "name": "Mumbai"},
    {"id": "2", "name": "New Delhi"},
  ];

  var selectedCity;

  final List<Map<String, String>> StateType = [
    {"id": "", "name": "Select Brand"},
    {"id": "1", "name": "Brand 1"},
    {"id": "2", "name": "Brand 2"},
  ];
  TextEditingController email = TextEditingController();

  TextEditingController cstNo = TextEditingController();

  TextEditingController tinNo = TextEditingController();

  TextEditingController contactPerson1 = TextEditingController();

  TextEditingController contactPerson2 = TextEditingController();

  TextEditingController createdBy = TextEditingController();

  TextEditingController dateinput = TextEditingController();
  final List<Map<String, String>> categoryTypes = [
    {"id": "", "name": "Select Category"},
    {"id": "1", "name": "Category 1"},
    {"id": "2", "name": "Category 2"},
  ];
  var selectedCategory;
  final List<Map<String, String>> materialTypes = [
    {"id": "", "name": "Select Material"},
    {"id": "1", "name": "Material 1"},
    {"id": "2", "name": "Material 2"},
  ];
  var selectedMaterial;
  final List<Map<String, String>> size = [
    {"id": "", "name": "Select Size"},
    {"id": "1", "name": "Size 1"},
    {"id": "2", "name": "Size 2"},
  ];
  var selectedSize;
  final List<Map<String, String>> color = [
    {"id": "", "name": "Select Color"},
    {"id": "1", "name": "Color 1"},
    {"id": "2", "name": "Color 2"},
  ];
  var selectedColor;

  final List<Map<String, String>> lensTypes1 = [
    {"id": "", "name": "Select Lens Type 1"},
    {"id": "1", "name": "Lens Type 11"},
    {"id": "2", "name": "Lens Type 12"},
  ];
  var selectedLens1;
  final List<Map<String, String>> lensTypes2 = [
    {"id": "", "name": "Select Lens Type 2"},
    {"id": "1", "name": "Lens Type 21"},
    {"id": "2", "name": "Lens Type 22"},
  ];
  var selectedLens2;
  final List<Map<String, String>> shapeList = [
    {"id": "1", "name": "Shape 1"},
    {"id": "2", "name": "Shape 2"},
  ];
  var selectedShape;
  final List<Map<String, String>> genderList = [
    {"id": "1", "name": "Female"},
    {"id": "2", "name": "Male"},
    {"id": "2", "name": "Others"},
  ];
  var selectedGender;
  final List<Map<String, String>> negativeStock = [
    {"id": "1", "name": "Yes"},
    {"id": "2", "name": "No"},
  ];

  final List<Map<String, String>> data = [
    {"prodCode": "PRODUCT_984994", "prodName": "Product "},
    {"prodCode": "PRODUCT_984994", "prodName": "Product "},
    {"prodCode": "PRODUCT_984994", "prodName": "Product"},
    {"prodCode": "PRODUCT_984994", "prodName": "Product "},
  ];
  var selectedNegativeStock;
  DateTime? pickedDate;
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //     appBar: AppBar(title: const Text("Supplier")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Supplier',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'FontMain',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    // Form Section (2 columns)
                    Expanded(
                      flex: 2,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Left Column
                          Expanded(
                            child: Column(
                              children: [
                                CustomTextField(
                                  controller: supplierCode,
                                  ddName: 'Supplier Code',
                                ),
                                SizedBox(height: 10),
                                CustomTextField(
                                  controller: supplierName,
                                  ddName: 'Supplier Name',
                                ),
                                SizedBox(height: 10),
                                CustomTextField(
                                  controller: address1,
                                  ddName: 'Address1',
                                ),
                                SizedBox(height: 10),
                                CustomTextField(
                                  controller: address2,
                                  ddName: 'Address2',
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Expanded(
                                      child: CustomDropdown(
                                        ddName: 'State',
                                        items: StateType,
                                        value: selectedState,
                                        onChanged: (newValue) {
                                          setState(() {
                                            selectedState = newValue;
                                            print(
                                                " Selected Brand :$selectedState");
                                          });
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: CustomDropdown(
                                        ddName: 'City',
                                        items: cityType,
                                        value: selectedCity,
                                        onChanged: (newValue) {
                                          setState(() {
                                            selectedCity = newValue;
                                            print(
                                                " Selected Sub Brand :$selectedCity");
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
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
                                        controller: telephone,
                                        ddName: 'Telephone',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                CustomTextField(
                                  controller: fax,
                                  ddName: 'Fax',
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          // Right Column
                          Expanded(
                            child: Column(
                              children: [
                                CustomTextField(
                                  controller: email,
                                  ddName: 'Email',
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        controller: cstNo,
                                        ddName: 'CST No',
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: CustomTextField(
                                        controller: tinNo,
                                        ddName: 'TIN No',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Expanded(
                                      child: CustomDropdown(
                                        ddName: 'Supplier Type',
                                        items: genderList,
                                        value: selectedGender,
                                        onChanged: (newValue) {
                                          setState(() {
                                            selectedGender = newValue;
                                            print(
                                                " Selected Gender :$selectedGender");
                                          });
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: CustomDropdown(
                                        ddName: 'Payment Mode',
                                        items: negativeStock,
                                        value: selectedNegativeStock,
                                        onChanged: (newValue) {
                                          setState(() {
                                            selectedNegativeStock = newValue;
                                            print(
                                                " Selected Negative Stock :$selectedNegativeStock");
                                          });
                                        },
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
                                      child: CustomDropdown(
                                        ddName: 'Compute Product Date',
                                        items: negativeStock,
                                        value: selectedNegativeStock,
                                        onChanged: (newValue) {
                                          setState(() {
                                            selectedNegativeStock = newValue;
                                            print(
                                                " Selected Negative Stock :$selectedNegativeStock");
                                          });
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: CustomDropdown(
                                        ddName: 'Compute Overall Desc',
                                        items: negativeStock,
                                        value: selectedNegativeStock,
                                        onChanged: (newValue) {
                                          setState(() {
                                            selectedNegativeStock = newValue;
                                            print(
                                                " Selected Negative Stock :$selectedNegativeStock");
                                          });
                                        },
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
                                        controller: contactPerson1,
                                        ddName: 'Contact Person1',
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: CustomTextField(
                                        controller: contactPerson2,
                                        ddName: 'Contact Person2',
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
                                        controller: createdBy,
                                        ddName: 'Created By',
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2),
                                              child: Text(
                                                'Created Date',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'FontMain',
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                              // width: 170,
                                              child: TextFormField(
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                textAlign: TextAlign
                                                    .left, // Align text to the left
                                                style: const TextStyle(
                                                    fontFamily: 'FontMain',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                                controller: dateinput,
                                                onTap: () async {
                                                  pickedDate =
                                                      await showDatePicker(
                                                          context: context,
                                                          initialDate:
                                                              DateTime.now(),
                                                          firstDate:
                                                              DateTime(1900),
                                                          lastDate:
                                                              DateTime(2900));
                                                  if (pickedDate != null) {
                                                    setState(() {
                                                      dateinput
                                                          .text = DateFormat(
                                                              'dd-MM-yyyy')
                                                          .format(pickedDate!);
                                                    });
                                                  }
                                                },
                                                decoration:
                                                    const InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 8,
                                                          horizontal:
                                                              8), // Adjust padding for better vertical centering
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 217, 215, 215),
                                                        width: 1),
                                                    borderRadius: BorderRadius
                                                        .zero, // Remove border radius
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius
                                                        .zero, // Remove border radius
                                                  ),
                                                  hintStyle: TextStyle(
                                                    fontFamily: 'FontMain',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 30),

                          // Table Section
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Product Table",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                const SizedBox(height: 10),
                                buildProductTable(),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
