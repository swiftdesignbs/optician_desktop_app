import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';

class PurchaseInvoices extends StatefulWidget {
  const PurchaseInvoices({super.key});

  @override
  State<PurchaseInvoices> createState() => _PurchaseInvoicesState();
}

class _PurchaseInvoicesState extends State<PurchaseInvoices> {
  TextEditingController invoice = TextEditingController();
  TextEditingController pi = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController balance = TextEditingController();
  TextEditingController gTotal = TextEditingController();

  final List<Map<String, String>> data = [
    {
      "Product Code": "3",
      "Product Name": "Rakesh",
      "Quantity": "66",
      "Pur Price": "7778",
      "Sell Price": "6733",
      "MRP": "6976",
      "Amount": "6976",
      "Net Amount": "6976",
      "Purchase Tax": "6%",
      "TaxPer": "Null",
      "TaxMode": "Null",
    },
    {
      "Product Code": "3",
      "Product Name": "Rakesh",
      "Quantity": "66",
      "Pur Price": "7778",
      "Sell Price": "6733",
      "MRP": "6976",
      "Amount": "6976",
      "Net Amount": "6976",
      "Purchase Tax": "6%",
      "TaxPer": "Null",
      "TaxMode": "Null",
    },
  ];

  final List<Map<String, String>> categoryTypes = [
    {"id": "1", "name": "Swift Dev 1"},
    {"id": "2", "name": "Swift Dev 2"},
    {"id": "3", "name": "Swift Dev 3"},
  ];
  var selectedCategory;
  final List<Map<String, String>> invoiceDate = [
    {"id": "1", "name": "08-09-2009"},
    {"id": "2", "name": "08-09-2009"},
    {"id": "3", "name": "08-09-2009"},
  ];
  var selectedInvoiceDate;
  final List<Map<String, String>> paymentDate = [
    {"id": "1", "name": "08-09-2009"},
    {"id": "2", "name": "08-09-2009"},
    {"id": "3", "name": "08-09-2009"},
  ];
  var selectedPaymentDate;
  final List<Map<String, String>> pODate = [
    {"id": "1", "name": "08-09-2009"},
    {"id": "2", "name": "08-09-2009"},
    {"id": "3", "name": "08-09-2009"},
  ];
  var selectedPODate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Purchase Invoice',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'FontMain',
                    ),
                  ),
                  const SizedBox(
                      height: 16), // Add spacing between header and content
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Supplier Details',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Fontmain')),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomDropdown(
                                      ddName: 'Supplier Name',
                                      items: categoryTypes,
                                      value: selectedCategory,
                                      onChanged: (newValue) {
                                        setState(() {
                                          selectedCategory = newValue;
                                          print(
                                              " Selected Supplier Name :$selectedCategory");
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: CustomTextField(
                                        controller: invoice,
                                        ddName: 'Invoice no'),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: CustomTextField(
                                        controller: address, ddName: 'Address'),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: CustomTextField(
                                        controller: pi, ddName: 'PI'),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: CustomTextField(
                                        controller: phone, ddName: 'Phone no'),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Divider(height: 20),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: CustomDropdown(
                                      ddName: 'Invoice Date',
                                      items: categoryTypes,
                                      value: selectedCategory,
                                      onChanged: (newValue) {
                                        setState(() {
                                          selectedCategory = newValue;
                                          print(
                                              " Selected Invoice Date :$selectedCategory");
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: CustomDropdown(
                                      ddName: 'Payment Date',
                                      items: categoryTypes,
                                      value: selectedCategory,
                                      onChanged: (newValue) {
                                        setState(() {
                                          selectedCategory = newValue;
                                          print(
                                              " Selected Payment Date :$selectedCategory");
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: CustomDropdown(
                                      ddName: 'PO Date',
                                      items: categoryTypes,
                                      value: selectedCategory,
                                      onChanged: (newValue) {
                                        setState(() {
                                          selectedCategory = newValue;
                                          print(
                                              " Selected PO Date :$selectedCategory");
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              DataTable(
                                border: TableBorder.all(width: 0.1),
                                columnSpacing: 8,
                                columns: _getColumns(),
                                rows: _getRows(),
                              ),
                              const Divider(
                                height: 40,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: CustomTextField(
                                        controller: gTotal,
                                        ddName: 'Gross total'),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: CustomTextField(
                                        controller: balance,
                                        ddName: 'Gross total'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Expanded(
                      //   child: ProductSectionPartTwo(),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
                fontSize: 12)),
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
                    fontSize: 12)),
          ));
        }).toList(),
      );
    }).toList();
  }
}
