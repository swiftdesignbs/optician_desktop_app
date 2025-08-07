import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.ddName,
  });

  final String ddName;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ddName,
          style: const TextStyle(
              fontFamily: 'FontMain',
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 30,
          // width: 170,
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.left, // Align text to the left
            style: const TextStyle(
                fontFamily: 'FontMain',
                fontWeight: FontWeight.bold,
                fontSize: 12),
            controller: controller,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal:
                      8), // Adjust padding for better vertical centering
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 217, 215, 215), width: 1),
                borderRadius: BorderRadius.zero, // Remove border radius
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.zero, // Remove border radius
              ),
              hintStyle: TextStyle(
                fontFamily: 'FontMain',
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
