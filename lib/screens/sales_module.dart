import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';
import 'package:optician_desktop_app/widgets/outline_btn.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen({super.key});

  @override
  State<SalesScreen> createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {
  TextEditingController mobileNo = TextEditingController();

  List<Map<String, String>> categoryTypes = [
    {"id": "", "name": "Select Category"},
    {"id": "1", "name": "Category 1"},
    {"id": "2", "name": "Category 2"},
  ];
  String? selectedCategory;

  final List<Map<String, String>> data1 = [
    {
      "Product Code": "200",
      "Product Name": "DropDown",
      "Qty": "3",
      "Sell Price": "347",
      "MRP": "347",
      "VAT[%]": "DropDown",
      "Amount": "347",
      "Net Amount": "347",
      "Remarks": "null"
    },
    {
      "Product Code": "200",
      "Product Name": "DropDown",
      "Qty": "3",
      "Sell Price": "347",
      "MRP": "347",
      "VAT[%]": "DropDown",
      "Amount": "347",
      "Net Amount": "347",
      "Remarks": "null"
    },
    {
      "Product Code": "200",
      "Product Name": "DropDown",
      "Qty": "3",
      "Sell Price": "347",
      "MRP": "347",
      "VAT[%]": "DropDown",
      "Amount": "347",
      "Net Amount": "347",
      "Remarks": "null"
    },
  ];

  final List<Map<String, String>> data = [
    {
      "A": "RE",
      "Add": "+1.00",
      "B": "Distance",
      "SPH": "0.50",
      "CYL": "1.00",
      "AXIS": "30.00",
      "C": "6",
      "SPH2": "31.47",
      "CYL2": "1.00",
      "AXIS2": "50.00",
      "D": "6",
      "VA": "6/3"
    },
    {
      "A": "LE",
      "Add": "+1.00",
      "B": "Distance",
      "SPH": "0.50",
      "CYL": "1.00",
      "AXIS": "30.00",
      "C": "6",
      "SPH2": "31.47",
      "CYL2": "1.00",
      "AXIS2": "50.00",
      "D": "6",
      "VA": "6/3"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Sales Module',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FontMain',
                          fontSize: 18)),
                  const SizedBox(height: 15),
                  const Text('Contact Information',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'FontMain')),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: CustomDropdown(
                          ddName: 'Customer Name',
                          items: categoryTypes,
                          value: selectedCategory,
                          onChanged: (value) {
                            setState(() {
                              selectedCategory = value;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Address',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Birth Date',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Mobile No',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'City',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text('[Press F7 To Add New Customer]',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FontMain')),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'PinCode',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Visit',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Order No',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomDropdown(
                          ddName: 'Order Date',
                          items: categoryTypes,
                          value: selectedCategory,
                          onChanged: (value) {
                            setState(() {
                              selectedCategory = value;
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
                          controller: mobileNo,
                          ddName: 'Reference No',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomDropdown(
                          ddName: 'Doctor',
                          items: categoryTypes,
                          value: selectedCategory,
                          onChanged: (value) {
                            setState(() {
                              selectedCategory = value;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomDropdown(
                          ddName: 'Order Date',
                          items: categoryTypes,
                          value: selectedCategory,
                          onChanged: (value) {
                            setState(() {
                              selectedCategory = value;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Order No',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(height: 10),
                  const SizedBox(height: 10),
                  const Text('Prescription Lens',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'FontMain')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DataTable(
                                border: TableBorder.all(width: 0.1),
                                columnSpacing: 20,
                                columns: _getColumns(),
                                rows: _getRows(),
                              ),
                              const Text('Radio Buttons will Come here'),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text('Contact Lens',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'FontMain')),
                              DataTable(
                                border: TableBorder.all(width: 0.1),
                                columnSpacing: 20,
                                columns: _getColumns(),
                                rows: _getRows(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('RE Remarks',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'FontMain')),
                                    SizedBox(height: 5),
                                    TextField(
                                        controller: mobileNo,
                                        maxLines:
                                            5, // Set to null for multiline input
                                        decoration: const InputDecoration(
                                          hintText: 'Enter your text here',
                                          hintStyle: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'FontMain'),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 217, 215, 215),
                                                width: 0),
                                            borderRadius: BorderRadius.zero,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('LE Remarks',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'FontMain')),
                                    SizedBox(height: 5),
                                    TextField(
                                        controller: mobileNo,
                                        maxLines:
                                            5, // Set to null for multiline input
                                        decoration: const InputDecoration(
                                          hintText: 'Enter your text here',
                                          hintStyle: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'FontMain'),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 217, 215, 215),
                                                width: 0),
                                            borderRadius: BorderRadius.zero,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: 400,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Lens Remarks',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'FontMain')),
                                TextField(
                                    controller: mobileNo,
                                    maxLines:
                                        5, // Set to null for multiline input
                                    decoration: const InputDecoration(
                                      hintText: 'Enter your text here',
                                      hintStyle: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'FontMain'),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 217, 215, 215),
                                            width: 0),
                                        borderRadius: BorderRadius.zero,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    'NO PHOTO UPLOADED,CLICK START CAMERA'),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Buttons(
                                      onPressed: () {},
                                      ddName: 'Start Camera',
                                      height: 45,
                                      width: 50,
                                      colors: const Color(0xff5793CE),
                                    ),
                                    const SizedBox(width: 10),
                                    OutLineBtn(
                                      onPressed: () {},
                                      ddName: 'Capture Image',
                                      height: 45,
                                      width: 50,
                                      colors: const Color(0xff5793CE),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DataTable(
                    border: TableBorder.all(width: 0.1),
                    columnSpacing: 10,
                    columns: _getColumns1(),
                    rows: _getRows1(),
                  ),
                  const SizedBox(height: 10),
                  const Text('Order Details',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'FontMain')),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: CustomDropdown(
                          ddName: 'Delivery Date',
                          items: categoryTypes,
                          value: selectedCategory,
                          onChanged: (value) {
                            setState(() {
                              selectedCategory = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Payment Mode',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Adv Amt',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Delivery Time',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Disc Amt',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Inclusive',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Inclusive',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Non-inclusive',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Grand Total',
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add some spacing between dropdowns
                      Expanded(
                        child: CustomTextField(
                          controller: mobileNo,
                          ddName: 'Balance',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }

  List<DataColumn> _getColumns() {
    return data.first.keys.map<DataColumn>((String key) {
      return DataColumn(
        label: Text(key,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'FontMain',
                fontSize: 8)),
      );
    }).toList();
  }

  List<DataRow> _getRows() {
    return data.map<DataRow>((Map<String, String> item) {
      return DataRow(
        cells: item.keys.map<DataCell>((String key) {
          return DataCell(Center(
            child: Text(item[key] ?? "",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'FontMain',
                    fontSize: 9)),
          ));
        }).toList(),
      );
    }).toList();
  }

  List<DataColumn> _getColumns1() {
    return data1.first.keys.map<DataColumn>((String key) {
      return DataColumn(
        label: Text(key,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'FontMain',
                fontSize: 8)),
      );
    }).toList();
  }

  List<DataRow> _getRows1() {
    return data1.map<DataRow>((Map<String, String> item) {
      return DataRow(
        cells: item.keys.map<DataCell>((String key) {
          return DataCell(Center(
            child: Text(item[key] ?? "",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'FontMain',
                    fontSize: 9)),
          ));
        }).toList(),
      );
    }).toList();
  }
}
