import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class PurchaseInvoicePage extends StatefulWidget {
  const PurchaseInvoicePage({super.key});

  @override
  State<PurchaseInvoicePage> createState() => _PurchaseInvoicePageState();
}

class _PurchaseInvoicePageState extends State<PurchaseInvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Purchase Invoice Print',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'FontMain',
                  ),
                ),
                const SizedBox(height: 16),
                const Center(
                  child: Text('Monarch Solutions',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'FontMain')),
                ),
                const SizedBox(height: 8),
                const Center(
                    child: Text(
                  'PURCHASE INVOICE',
                  style: TextStyle(
                      fontFamily: 'FontMain',
                      fontSize: 12,
                      color: Color(0xff1F3F7A),
                      fontWeight: FontWeight.bold),
                )),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(border: Border.all()),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Text('Supplier Name: Roger Federer',
                        style: TextStyle(
                            fontFamily: 'FontMain',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: Border.symmetric(vertical: BorderSide())),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Text(
                          'Address: Mumbai Central near Municipal Hospital',
                          style: TextStyle(
                              fontFamily: 'FontMain',
                              fontWeight: FontWeight.bold)),
                    )),
                Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Invoice No: 85',
                            style: TextStyle(
                              fontFamily: 'FontMain',
                              fontWeight: FontWeight.bold,
                            )),
                        Text('Invoice Date: 1/9/2016',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                Table(
                  border: TableBorder.all(),
                  columnWidths: const {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(1),
                    3: FlexColumnWidth(1),
                    4: FlexColumnWidth(1),
                  },
                  children: const [
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Name',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Qty',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('MRP',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Sell Price',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Tax Amount',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('black GOS',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('10.00',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('10.00',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(''),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Total',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('10.00',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('10.00',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('',
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold)),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
