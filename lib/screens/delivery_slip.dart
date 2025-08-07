import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CustomerDeliverySlip extends StatefulWidget {
  const CustomerDeliverySlip({super.key});

  @override
  State<CustomerDeliverySlip> createState() => _CustomerDeliverySlipState();
}

class _CustomerDeliverySlipState extends State<CustomerDeliverySlip> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    // Financial details
    final financialData = [
      ['Total', '2500'],
      ['Discount', '10%'],
      ['Advance', '1200'],
      ['Grand Total', ''],
      ['Balance', '']
    ];
    final List<Map<String, dynamic>> tableData = [
      {
        "id": "01",
        "Description": "Ray Ban Sunglasses",
        "qty": "02",
        "MRP": "2300"
      },
      {
        "id": "02",
        "Description": "Oakley Sunglasses",
        "qty": "01",
        "MRP": "3500"
      },
      {
        "id": "03",
        "Description": "Gucci Sunglasses",
        "qty": "01",
        "MRP": "4500"
      },
      {
        "id": "04",
        "Description": "Prada Sunglasses",
        "qty": "03",
        "MRP": "2500"
      },
      {
        "id": "05",
        "Description": "Versace Sunglasses",
        "qty": "02",
        "MRP": "3000"
      },
      {
        "id": "06",
        "Description": "Armani Sunglasses",
        "qty": "01",
        "MRP": "4000"
      }
    ];

    // Calculate total
    double calculateTotal() {
      double total = 0;
      for (var item in tableData) {
        total += int.parse(item["qty"]) * double.parse(item["MRP"]);
      }
      return total;
    }

    final double total = calculateTotal();

    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'Monarch Solutions (DELIVERY SLIP)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FontMain',
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Shop No. 02,Narendra Co-op Housing Society,Below Orbit,',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'FontMain',
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                      const Text(
                        'Eye Hospital,Opp Sheetal Sweets,SV Road,',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'FontMain',
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                      const Text(
                        'Jogeshwari(WEST) Mumbai - 400 102',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'FontMain',
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ORDER NO : 1234",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain',
                              ),
                            ),
                            Text(
                              "Customer : Roger Federer",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain',
                              ),
                            ),
                            Text(
                              "Delivery Date : 12/03/2024",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain',
                              ),
                            ),
                            Text(
                              "Date : 12/03/2024",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Delivery Date : 12/03/2024",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'FontMain',
                            ),
                          ),
                          Text(
                            "Date : 12/03/2024",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'FontMain',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // First Table
                          Container(
                            width: width * 0.5, // Adjust as needed
                            padding: const EdgeInsets.all(8.0),
                            child: Table(
                              border: TableBorder.all(
                                  color: Colors.grey, width: 0.5),
                              children: [
                                TableRow(
                                  children: [
                                    buildTableCell('ADD', isHeader: true),
                                    buildTableCell('RIGHT EYE', isHeader: true),
                                    buildTableCell('', isHeader: true),
                                    buildTableCell('', isHeader: true),
                                    buildTableCell('', isHeader: true),
                                    buildTableCell('LEFT EYE', isHeader: true),
                                    buildTableCell('', isHeader: true),
                                    buildTableCell('', isHeader: true),
                                    buildTableCell('', isHeader: true),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    buildTableCell(''),
                                    buildTableCell('SPH'),
                                    buildTableCell('CYL'),
                                    buildTableCell('AXIS'),
                                    buildTableCell('VA'),
                                    buildTableCell('SPH'),
                                    buildTableCell('CYL'),
                                    buildTableCell('AXIS'),
                                    buildTableCell('VA'),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    buildTableCell('DISTANCE',
                                        isFirstColumn: true),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell('0'),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell('0'),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    buildTableCell('READING',
                                        isFirstColumn: true),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell('0'),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell('0'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          // Second Table
                          Container(
                            width: width * 0.2, // Adjust as needed
                            padding: const EdgeInsets.all(8.0),
                            child: Table(
                              border: TableBorder.all(
                                  color: Colors.grey, width: 0.5),
                              children: financialData.map((row) {
                                return TableRow(
                                  children: row.map((cell) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        cell,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'FontMain',
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: width * 0.6, // Adjust as needed
                            padding: const EdgeInsets.all(8.0),
                            child: Table(
                              border: TableBorder.all(
                                  color: Colors.grey, width: 0.5),
                              children: [
                                TableRow(
                                  children: [
                                    buildTableCell('ID', isHeader: true),
                                    buildTableCell('Description',
                                        isHeader: true),
                                    buildTableCell('Qty', isHeader: true),
                                    buildTableCell('MRP', isHeader: true),
                                    buildTableCell('Total', isHeader: true),
                                  ],
                                ),
                                ...tableData.map((item) {
                                  return TableRow(
                                    children: [
                                      buildTableCell(item["id"]),
                                      buildTableCell(item["Description"]),
                                      buildTableCell(item["qty"]),
                                      buildTableCell(item["MRP"]),
                                      buildTableCell((int.parse(item["qty"]) *
                                              double.parse(item["MRP"]))
                                          .toString()),
                                    ],
                                  );
                                }).toList(),
                                TableRow(
                                  children: [
                                    buildTableCell('', isHeader: true),
                                    buildTableCell('', isHeader: true),
                                    buildTableCell('', isHeader: true),
                                    buildTableCell('Total', isHeader: true),
                                    buildTableCell(total.toString(),
                                        isHeader: true),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "From\nMonarch Solutions\n\n\n\nAuthorised Signatory",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain',
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }

  Widget buildTableCell(String text,
      {bool isHeader = false, bool isFirstColumn = false}) {
    return Container(
      color: isFirstColumn ? Colors.grey[200] : null,
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontFamily: 'FontMain', fontSize: 9),
        ),
      ),
    );
  }
}
