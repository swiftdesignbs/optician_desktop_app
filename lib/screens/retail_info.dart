import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:optician_desktop_app/widgets/custom_dd.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';

class RetailPage extends StatefulWidget {
  const RetailPage({Key? key}) : super(key: key);

  @override
  State<RetailPage> createState() => _RetailPageState();
}

class _RetailPageState extends State<RetailPage> {
  TextEditingController mobileNo = TextEditingController();
  TextEditingController customerPoint = TextEditingController();
  TextEditingController discAmt = TextEditingController();
  TextEditingController discPercent = TextEditingController();
  TextEditingController addInfo = TextEditingController();

  List<Map<String, String>> categoryTypes = [
    {"id": "", "name": "Select Date"},
    {"id": "1", "name": "23/09/2024"},
    {"id": "2", "name": "23/09/2024"},
  ];
  String? selectedCategory;

  final List<Map<String, String>> data = [
    {
      "Product Code": "200",
      "Product Name": "DropDown",
      "Quatity": "23",
      "Sell Price": "347",
      "MRP": "347",
      "VAT": "DropDown",
      "Amount": "347",
      "Net Amount": "347",
    },
    {
      "Product Code": "200",
      "Product Name": "DropDown",
      "Quatity": "Edit",
      "Sell Price": "347",
      "MRP": "347",
      "VAT": "DropDown",
      "Amount": "347",
      "Net Amount": "347",
    },
    {
      "Product Code": "200",
      "Product Name": "DropDown",
      "Quatity": "Edit",
      "Sell Price": "347",
      "MRP": "347",
      "VAT": "DropDown",
      "Amount": "347",
      "Net Amount": "347",
    },
  ];

  final List<Map<String, String>> vatOptions = [
    {"id": "", "name": "Select Tax"},
    {"id": "01", "name": "No TAX"},
    {"id": "02", "name": "5%"},
    {"id": "03", "name": "10%"},
    {"id": "04", "name": "15%"}
  ];

  var selectedTax;

  final List<Map<String, String>> prodName = [
    {"id": "", "name": "Select Product"},
    {"id": "01", "name": "Ray Bann"},
    {"id": "02", "name": "Oakley"},
  ];

  var selectedProdName;

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
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Retail Bill Info',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'FontMain')),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(
                                      width: 170,
                                      child: CustomTextField(
                                        controller: mobileNo,
                                        ddName: 'Sr No',
                                      )),
                                  const SizedBox(
                                      width:
                                          10), // Add some spacing between dropdowns
                                  SizedBox(
                                    width: 170,
                                    child: CustomDropdown(
                                      ddName: 'Sale Date',
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
                              const Divider(
                                height: 30,
                              ),
                              DataTable(
                                columnSpacing: 15,
                                border: TableBorder.all(),
                                columns: _createColumns(),
                                rows: _createRows(),
                              ),
                              const SizedBox(height: 10),
                              const Text('Customer Details',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'FontMain')),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomDropdown(
                                      ddName: 'Customer',
                                      items: categoryTypes,
                                      value: selectedCategory,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedCategory = value;
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: CustomDropdown(
                                      ddName: 'Sales Rep',
                                      items: categoryTypes,
                                      value: selectedCategory,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedCategory = value;
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                      child: CustomTextField(
                                    controller: customerPoint,
                                    ddName: 'Customer Points',
                                  )),
                                  const SizedBox(
                                      width:
                                          10), // Add some spacing between dropdowns
                                  Expanded(
                                    child: CustomDropdown(
                                      ddName: 'Bill Type',
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
                              const SizedBox(
                                height: 5,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('[Press F7 To Add New Customer]',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          fontFamily: 'FontMain'))
                                ],
                              ),
                              const Divider(height: 40),
                              const Text('Additional Charges',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'FontMain')),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                      child: CustomTextField(
                                    controller: discAmt,
                                    ddName: 'Disc Amt',
                                  )),
                                  const SizedBox(width: 10),
                                  Expanded(
                                      child: CustomTextField(
                                    controller: discPercent,
                                    ddName: 'Disc %',
                                  )),
                                  const SizedBox(width: 10),
                                  Expanded(
                                      child: CustomTextField(
                                    controller: addInfo,
                                    ddName: 'Additional Info',
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<DataColumn> _createColumns() {
    return const <DataColumn>[
      DataColumn(
        label: Text(
          'Product Code',
          style: TextStyle(
            fontFamily: 'FontMain',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      DataColumn(
        label: Text(
          'Product Name',
          style: TextStyle(
            fontFamily: 'FontMain',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      DataColumn(
        label: Text(
          'Quantity',
          style: TextStyle(
            fontFamily: 'FontMain',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      DataColumn(
        label: Text(
          'Sell Price',
          style: TextStyle(
            fontFamily: 'FontMain',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      DataColumn(
        label: Text(
          'MRP',
          style: TextStyle(
            fontFamily: 'FontMain',
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      DataColumn(
        label: Text(
          'VAT',
          style: TextStyle(
            fontFamily: 'FontMain',
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      DataColumn(
        label: Text(
          'Amount',
          style: TextStyle(
            fontFamily: 'FontMain',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      DataColumn(
        label: Text(
          'Net Amount',
          style: TextStyle(
            fontFamily: 'FontMain',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  List<DataRow> _createRows() {
    return data.map((product) {
      return DataRow(
        cells: <DataCell>[
          DataCell(Center(
              child: Text(
            product["Product Code"]!,
            style: const TextStyle(
                fontFamily: 'FontMain',
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ))),
          DataCell(
            SizedBox(
              width: 100,
              child: CustomTableDD(
                items: prodName,
                value: selectedProdName,
                onChanged: (value) {
                  setState(() {
                    selectedProdName = value;
                  });
                },
              ),
            ),
          ),
          DataCell(Center(
              child: Text(
            product["Quatity"]!,
            style: const TextStyle(
                fontFamily: 'FontMain',
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ))),
          DataCell(Center(
              child: Text(
            product["Sell Price"]!,
            style: const TextStyle(
                fontFamily: 'FontMain',
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ))),
          DataCell(Center(
              child: Text(
            product["MRP"]!,
            style: const TextStyle(
                fontFamily: 'FontMain',
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ))),
          DataCell(
            SizedBox(
              width: 100,
              child: CustomTableDD(
                items: vatOptions,
                value: selectedTax,
                onChanged: (value) {
                  setState(() {
                    selectedTax = value;
                  });
                },
              ),
            ),
          ),
          DataCell(Center(
              child: Text(
            product["Amount"]!,
            style: const TextStyle(
                fontFamily: 'FontMain',
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ))),
          DataCell(Center(
              child: Text(
            product["Net Amount"]!,
            style: const TextStyle(
                fontFamily: 'FontMain',
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ))),
        ],
      );
    }).toList();
  }
}
