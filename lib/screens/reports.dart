import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/outline_btn.dart';

class ReportModule extends StatefulWidget {
  const ReportModule({super.key});

  @override
  State<ReportModule> createState() => _ReportModuleState();
}

class _ReportModuleState extends State<ReportModule> {
  TextEditingController mobileNo = TextEditingController();
  TextEditingController refNo = TextEditingController();

  List<Map<String, String>> categoryTypes = [
    {"id": "", "name": "Select Category"},
    {"id": "1", "name": "Category 1"},
    {"id": "2", "name": "Category 2"},
  ];
  String? selectedCategory;

  final List<Map<String, String>> data = [
    {
      "Order Code": "12345",
      "Category": "OTHERS",
      "Customer Name": "Roder Daim",
      "Telephone": "9988776655",
      "Email": "abcdefgh@gmail.com",
      "Balance": "10.00",
      "Grand Total": "10.00",
      "Order Date": "02/05/2024",
      "Type": "OPTICAL"
    },
    {
      "Order Code": "12345",
      "Category": "OTHERS",
      "Customer Name": "Roder Daim",
      "Telephone": "9988776655",
      "Email": "abcdefgh@gmail.com",
      "Balance": "100.00",
      "Grand Total": "100.00",
      "Order Date": "02/05/2024",
      "Type": "RETAIL"
    },
    {
      "Order Code": "12345",
      "Category": "OTHERS",
      "Customer Name": "Roder Daim",
      "Telephone": "9988776655",
      "Email": "abcdefgh@gmail.com",
      "Balance": "150.00",
      "Grand Total": "150.00",
      "Order Date": "02/05/2024",
      "Type": "RETAIL"
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
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Report Module',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'FontMain')),
                    const SizedBox(
                        height: 16), // Add spacing between header and content
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Expanded(child: OrderStatusWidget(context))],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Column OrderStatusWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Search Criteria',
            style:
                TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain')),
        const SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
              width: 180,
              child: CustomDropdown(
                ddName: 'Sale Type',
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
            Buttons(
              onPressed: () {},
              ddName: 'Load',
              height: 45,
              width: 120,
              colors: const Color(0xff5793CE),
            ),
            SizedBox(width: 30),
            OutLineBtn(
              onPressed: () {},
              ddName: 'Export to Excel',
              height: 45,
              width: 120,
              colors: const Color(0xff5793CE),
            ),
            SizedBox(width: 30),
            OutLineBtn(
              onPressed: () {},
              ddName: 'Send SMS',
              height: 45,
              width: 120,
              colors: const Color(0xff5793CE),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Container(
          width: MediaQuery.of(context).size.width,
          child: DataTable(
            border: TableBorder.all(width: 0.1),
            columnSpacing: 1,
            columns: _getColumns(),
            rows: _getRows(),
          ),
        ),
        const SizedBox(height: 20),
        // const SizedBox(height: 20),
        // // Sticky Footer
        // FooterWidgetComp(),
      ],
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
