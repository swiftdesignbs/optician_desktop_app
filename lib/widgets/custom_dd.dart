import 'package:flutter/material.dart';

class CustomTableDD extends StatefulWidget {
  final String? value; // Use name as value
  final Function(String?)? onChanged;
  final List<Map<String, dynamic>> items;

  const CustomTableDD({
    required this.items,
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  State<CustomTableDD> createState() => _CustomTableDDState();
}

class _CustomTableDDState extends State<CustomTableDD> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      child: DropdownButton<String>(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        isExpanded: true,
        underline: const SizedBox(height: 0),
        value: widget.items.any((item) => item['name'] == widget.value) ? widget.value : null,
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
          return widget.items.map<Widget>((item) {
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
          }).toList();
        },
        items: widget.items.map((item) {
          return DropdownMenuItem<String>(
            value: item['name'],
            child: SizedBox(
              height: 30,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  item['name'],
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
        }).toList(),
      ),
    );
  }
}
