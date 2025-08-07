import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class RetailInvoicePage extends StatefulWidget {
  @override
  State<RetailInvoicePage> createState() => _RetailInvoicePageState();
}

class _RetailInvoicePageState extends State<RetailInvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    boxShadow: [
                      // BoxShadow(
                      //   color: Colors.grey.withOpacity(0.3),
                      //   blurRadius: 10,
                      //   spreadRadius: 5,
                      //   offset: const Offset(0, 3),
                      // ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          'Monarch Solutions',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'FontMain',
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Shop No. 02, Narendra Co-op Housing Society, Below Orbit,',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'FontMain',
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'Eye Hospital, Opp Sheetal Sweets, SV Road,',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'FontMain',
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'Jogeshwari(WEST) Mumbai - 400 102',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'FontMain',
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'REAL EYES TO REALIZE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'FontMain',
                            fontSize: 14,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('TAX INVOICE',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text('CUSTOMER:'),
                                  Text('ADD:'),
                                  Text('PHONE: 8080928926'),
                                  Text('NO: 1'),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('DATE: 09/01/2016'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Table(
                            border: TableBorder.all(color: Colors.grey),
                            columnWidths: const {
                              0: FractionColumnWidth(0.1),
                              1: FractionColumnWidth(0.4),
                              2: FractionColumnWidth(0.2),
                              3: FractionColumnWidth(0.1),
                              4: FractionColumnWidth(0.2),
                            },
                            children: [
                              TableRow(
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                ),
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Sr No',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'FontMain',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Description',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'FontMain',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Tax Desc',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'FontMain',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Qty',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'FontMain',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Net Amt',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'FontMain',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              const TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'back CORS',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'NO TAX',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '120.00',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('VAT TIN NO : VAT807974BN',
                                  style: TextStyle(
                                    fontFamily: 'FontMain',
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text('CST TIN NO : VAT807974BN',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'FontMain',
                                  )),
                              Text('Less Discount :   50.00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'FontMain',
                                  )),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Goods Once Sold Will Not Be Taken\nBack Subjected to Mumbai Jurisdiction',
                                style: TextStyle(
                                    // fontFamily: 'FontMain',
                                    ),
                              ),
                              Text(
                                'Bill Amount',
                                style: TextStyle(
                                    fontFamily: 'FontMain',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        //  const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // const Text(
                              //   'Back Subjected to Mumbai Jurisdiction',
                              //   style: TextStyle(
                              //       //  fontFamily: 'FontMain',
                              //       ),
                              // ),
                              Container(
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total',
                                      style: TextStyle(
                                          fontFamily: 'FontMain',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Text(
                                      '01',
                                      style: TextStyle(
                                          fontFamily: 'FontMain',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      '120.00',
                                      style: TextStyle(
                                          fontFamily: 'FontMain',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      '70.00',
                                      style: TextStyle(
                                          fontFamily: 'FontMain',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Monarch Solutions\n\n\n\nAuthorised Signatory",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'FontMain',
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'E&OE',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'FontMain'),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Text(
                                'I/We hereby certify that my four registration certificate under the Maharashtra Value Added Tax Act 2002, is in force on the date on which the sale of the good specified in this tax invoice is made by me Jus and the transaction of the sale covered by this tax invoice has been affected by me us and it shall be accounted for in the turnover of sales while filing oif the return and the due tax, if any, payable on the sale has been paid or shall be paid.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'FontMain'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
