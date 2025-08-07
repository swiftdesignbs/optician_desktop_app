import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class FitterSlip extends StatefulWidget {
  const FitterSlip({super.key});

  @override
  State<FitterSlip> createState() => _FitterSlipState();
}

class _FitterSlipState extends State<FitterSlip> {
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
                        'Monarch Solutions',
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
                              "Date : 12/03/2024",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Tel : 9908673637",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain',
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Doctor/RX :",
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
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: width * 0.5,
                            padding: const EdgeInsets.all(8.0),
                            child: Table(
                              border: TableBorder.all(
                                  color: Colors.grey, width: 0.5),
                              children: [
                                TableRow(
                                  children: [
                                    buildTableCell('CONTACT LENS',
                                        isHeader: true),
                                    buildTableCell('K1-H', isHeader: true),
                                    buildTableCell('K2-V', isHeader: true),
                                    buildTableCell('B.C', isHeader: true),
                                    buildTableCell('DIA', isHeader: true),
                                    buildTableCell('O.REF', isHeader: true),
                                    buildTableCell('SPH', isHeader: true),
                                    buildTableCell('CYL', isHeader: true),
                                    buildTableCell('AXIS', isHeader: true),
                                    buildTableCell('VA', isHeader: true),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    buildTableCell('Distance',
                                        isFirstColumn: true),
                                    buildTableCell('RE'),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    buildTableCell('Reading',
                                        isFirstColumn: true),
                                    buildTableCell('LE'),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
                                    buildTableCell(''),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "RE Remarks",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain',
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "LE Remarks",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FontMain',
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "LENS Remarks",
                              style: TextStyle(
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
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              " Monarch Solutions ",
                              style: TextStyle(
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
            fontWeight: FontWeight.bold, fontFamily: 'FontMain', fontSize: 8),
      ),
    ),
  );
}
