import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String ddName;
  final String? value;
  final Function(String?)? onChanged;
  final List<Map<String, String>> items;

  const CustomDropdown({
    super.key,
    required this.ddName,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ddName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            fontFamily: 'FontMain',
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 217, 215, 215),
            ),
          ),
          child: DropdownButton<String>(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            isExpanded: true,
            underline: const SizedBox(),
            value: items.any((item) => item['name'] == value) ? value : null,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'FontMain',
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
            hint: const Text(
              "Select",
              style: TextStyle(
                fontFamily: 'FontMain',
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            onChanged: onChanged,
            items: items.map((item) {
              return DropdownMenuItem<String>(
                value: item['name'],
                child: SizedBox(
                  height: 30,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      item['name']!,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'FontMain',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
