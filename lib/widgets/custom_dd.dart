import 'package:flutter/material.dart';

class CustomTableDD extends StatefulWidget {
  final dynamic value;
  final Function(dynamic)? onChanged; // Updated to allow null
  final List<dynamic> items; // Updated to accept dynamic items

  const CustomTableDD({
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  State<CustomTableDD> createState() => _CustomTableDDState();
}

class _CustomTableDDState extends State<CustomTableDD> {
  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 25,
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          // decoration: BoxDecoration(
          //   border: Border.all(
          //     color: const Color.fromARGB(255, 217, 215, 215),
          //   ),
          // ),
          child: DropdownButton<String>(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            isExpanded: true,
            underline: Container(height: 0, color: Colors.white),
            value: widget.value,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'FontMain',
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
            hint: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Select",
                style: TextStyle(
                  fontFamily: 'FontMain',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            onChanged: (newValue) {
              if (widget.onChanged != null) {
                widget.onChanged!(newValue);
              }
            },
            selectedItemBuilder: (BuildContext context) {
              return widget.items.map<Widget>((dynamic item) {
                if (item is Map<String, dynamic> &&
                    item.containsKey('name') &&
                    item['name'] is String) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      item['name'].toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'FontMain',
                        color: Colors.black,
                      ),
                    ),
                  );
                } else {
                  return const SizedBox
                      .shrink(); // Placeholder widget for invalid data
                }
              }).toList();
            },
            items: widget.items.map((item) {
              if (item is Map<String, dynamic> &&
                  item.containsKey('id') &&
                  item.containsKey('name')) {
                return DropdownMenuItem<String>(
                  value: item['id'].toString(),
                  child: SizedBox(
                    height: 30,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        item['name'].toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontFamily: 'FontMain',
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return const DropdownMenuItem<String>(
                  value: '',
                  child:
                      SizedBox.shrink(), // Placeholder widget for invalid data
                );
              }
            }).toList(),
          ),
        ),
      ],
    );
  }
}
