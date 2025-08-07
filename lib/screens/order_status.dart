import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_dropdown.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({super.key});

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  TextEditingController mobileNo = TextEditingController();

  List<Map<String, String>> categoryTypes = [
    {"id": "", "name": "Select Category"},
    {"id": "1", "name": "Category 1"},
    {"id": "2", "name": "Category 2"},
  ];
  String? selectedCategory;

  final List<Map<String, String>> data = [
    {
      "x": "Delete",
      "Order No": "12345",
      "pen": "Edit",
      "Order Date": "09/09/20202",
      "Customer Name": "Roder Daim",
      "Telephone": "9988776655",
      "Email": "abcdefgh@gmail.com",
      "OrderStatus": "Yet to Proceed",
      "Slip": "Slip",
      "Bill": "Bill",
      "Slip": "Slip"
    },
    {
      "x": "Delete",
      "Order No": "12345",
      "pen": "Edit",
      "Order Date": "09/09/20202",
      "Customer Name": "Roder Daim",
      "Telephone": "9988776655",
      "Email": "abcdefgh@gmail.com",
      "OrderStatus": "Yet to Proceed",
      "Slip": "Slip",
      "Bill": "Bill",
      "Slip": "Slip"
    },
    {
      "x": "Delete",
      "Order No": "12345",
      "pen": "Edit",
      "Order Date": "09/09/20202",
      "Customer Name": "Roder Daim",
      "Telephone": "9988776655",
      "Email": "abcdefgh@gmail.com",
      "OrderStatus": "Yet to Proceed",
      "Slip": "Slip",
      "Bill": "Bill",
      "Slip": "Slip"
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
                    RichText(
                      textAlign: TextAlign.left,
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'Order Status \n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'FontMain',
                            ),
                          ),
                          WidgetSpan(
                            child: SizedBox(
                              height:
                                  38, // Adjust the height for the desired space
                            ),
                          ),
                          TextSpan(
                            text: "Master    ",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff1F3F7A),
                              fontFamily: 'FontMain',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ">  Order Status",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontFamily: 'FontMain',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
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
          ),
        ],
      ),
    );
  }

  Column OrderStatusWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Customer Details',
            style:
                TextStyle(fontWeight: FontWeight.bold, fontFamily: 'FontMain')),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: CustomDropdown(
                ddName: 'Order No',
                items: categoryTypes,
                value: selectedCategory,
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
              ),
            ),
            const SizedBox(width: 10), // Add some spacing between dropdowns
            Expanded(
              child: CustomDropdown(
                ddName: 'From Date',
                items: categoryTypes,
                value: selectedCategory,
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
              ),
            ),
            const SizedBox(width: 10), // Add some spacing between dropdowns
            Expanded(
              child: CustomDropdown(
                ddName: 'To Date',
                items: categoryTypes,
                value: selectedCategory,
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
              ),
            ),
            const SizedBox(width: 10), // Add some spacing between dropdowns
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
            const SizedBox(width: 10), // Add some spacing between dropdowns
            Expanded(
                child: CustomTextField(
              controller: mobileNo,
              ddName: 'Mobile No',
            )),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 170,
          child: CustomTextField(
            controller: mobileNo,
            ddName: 'Reference No',
          ),
        ),
        const SizedBox(height: 10),
        Buttons(
          onPressed: () {},
          ddName: 'Load',
          height: 45,
          width: 120,
          colors: const Color(0xff5793CE),
        ),
        const SizedBox(height: 15),
        Container(
          width: MediaQuery.of(context).size.width,
          child: DataTable(
            border: TableBorder.all(width: 0.1),
            columnSpacing: 20,
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
        label: Center(
          child: Text(key,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'FontMain',
                  fontSize: 12)),
        ),
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
