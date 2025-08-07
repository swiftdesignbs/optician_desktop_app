import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/outline_btn.dart';

class SegmentCustomer extends StatefulWidget {
  const SegmentCustomer({super.key});

  @override
  State<SegmentCustomer> createState() => _SegmentCustomerState();
}

class _SegmentCustomerState extends State<SegmentCustomer> {
  TextEditingController message = TextEditingController();
  late String selectedRadio;

  final List<Map<String, String>> data = [
    {
      "Custid": "1",
      "Name": "Raj",
      "Phone": "9988776655",
      "Email": "abc@gmail.com",
      "Anniversary": "09/02/2022",
      "Birthday": "09/02/2002"
    },
    {
      "Custid": "2",
      "Name": "Rajesh",
      "Phone": "9988776655",
      "Email": "abc@gmail.com",
      "Anniversary": "09/02/2022",
      "Birthday": "09/02/2002"
    },
    {
      "Custid": "3",
      "Name": "Rakesh",
      "Phone": "9988776655",
      "Email": "abc@gmail.com",
      "Anniversary": "09/02/2022",
      "Birthday": "09/02/2002"
    }
  ];
  List<bool> _selected = [];
  @override
  void initState() {
    super.initState();
    // Initialize the default selected radio button.
    selectedRadio = 'Option 1';
    _selected = List<bool>.filled(data.length, false);
  }

  setSelectedRadio(String val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Add widgets for desktop view here

        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Segment Customer',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'FontMain',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio(
                                value:
                                    'Customers with Anniversary in Coming 3 Months',
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  setSelectedRadio(val!);
                                },
                              ),
                              const Text(
                                'Customers with Anniversary in Coming 3 Months',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Fontmain'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio(
                                value:
                                    'Customers with Birthday in Coming 3Months',
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  setSelectedRadio(val!);
                                },
                              ),
                              const Text(
                                'Customers with Birthday in Coming 3Months',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    fontFamily: 'Fontmain'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio(
                                value: 'Get All Customers',
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  setSelectedRadio(val!);
                                },
                              ),
                              const Text(
                                'Get All Customers',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    fontFamily: 'Fontmain'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Buttons(
                        onPressed: () {},
                        ddName: 'Get Now',
                        height: 45,
                        width: 80,
                        colors: const Color(0xff5793CE),
                      ),
                      const SizedBox(height: 10),
                      DataTable(
                        border: TableBorder.all(color: Colors.grey.shade300),
                        columns: const [
                          DataColumn(
                              label: Text(
                            'Select',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: 'Fontmain'),
                          )),
                          DataColumn(
                              label: Text(
                            'Custid',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'Fontmain',
                            ),
                          )),
                          DataColumn(
                              label: Text(
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: 'Fontmain'),
                          )),
                          DataColumn(
                              label: Text(
                            'Phone',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: 'Fontmain'),
                          )),
                          DataColumn(
                              label: Text(
                            'Email',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: 'Fontmain'),
                          )),
                          DataColumn(
                              label: Text(
                            'Anniversary',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: 'Fontmain'),
                          )),
                          DataColumn(
                              label: Text(
                            'Birthday',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: 'Fontmain'),
                          )),
                        ],
                        rows: data.isNotEmpty
                            ? List<DataRow>.generate(
                                data.length,
                                (index) => DataRow(
                                  // selected: _selected[index],
                                  // onSelectChanged: (newValue) {
                                  //   setState(() {
                                  //     _selected[index] =
                                  //         newValue!;
                                  //   });
                                  // },
                                  cells: [
                                    DataCell(
                                      Checkbox(
                                        value: _selected[index],
                                        onChanged: (newValue) {
                                          setState(() {
                                            _selected[index] = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                    DataCell(Text(
                                      data[index]["Custid"]!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          fontFamily: 'Fontmain'),
                                    )),
                                    DataCell(Text(
                                      data[index]["Name"]!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          fontFamily: 'Fontmain'),
                                    )),
                                    DataCell(Text(
                                      data[index]["Phone"]!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          fontFamily: 'Fontmain'),
                                    )),
                                    DataCell(Text(
                                      data[index]["Email"]!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          fontFamily: 'Fontmain'),
                                    )),
                                    DataCell(Text(
                                      data[index]["Anniversary"]!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          fontFamily: 'Fontmain'),
                                    )),
                                    DataCell(Text(
                                      data[index]["Birthday"]!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          fontFamily: 'Fontmain'),
                                    )),
                                  ],
                                ),
                              )
                            : [], // Return an empty list if data is empty
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Type Message Here',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'FontMain')),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                                controller: message,
                                maxLines: 5, // Set to null for multiline input
                                decoration: const InputDecoration(
                                  hintText: 'Enter your text here',
                                  hintStyle: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'FontMain'),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 217, 215, 215),
                                        width: 1),
                                    borderRadius: BorderRadius
                                        .zero, // Remove border radius
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius
                                        .zero, // Remove border radius
                                  ),
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Buttons(
                            onPressed: () {},
                            ddName: 'Send',
                            height: 45,
                            width: 80,
                            colors: const Color(0xff5793CE),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          OutLineBtn(
                            onPressed: () {},
                            ddName: 'Cancel',
                            height: 45,
                            width: 80,
                            colors: const Color(0xff5793CE),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          OutLineBtn(
                            onPressed: () {},
                            ddName: 'Send Birthday message',
                            height: 45,
                            width: 150,
                            colors: const Color(0xff5793CE),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          OutLineBtn(
                            onPressed: () {},
                            ddName: 'Send Anniversary message',
                            height: 45,
                            width: 150,
                            colors: const Color(0xff5793CE),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // Sticky Footer
              ],
            ),
          ),
        ))
      ],
    ));
  }
}
