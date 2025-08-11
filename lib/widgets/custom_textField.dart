import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.ddName,
    this.keyboardType,
    this.validator,
    this.onChanged, // <-- Added
    this.readOnly = false, // <-- Added for discount price field
  });

  final String ddName;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged; // <-- Added
  final bool readOnly; // <-- Added

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
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 30,
          child: TextFormField(
            validator: validator,
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: 'FontMain',
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            controller: controller,
            keyboardType: keyboardType ?? TextInputType.text,
            onChanged: onChanged, // <-- Added
            readOnly: readOnly, // <-- Added
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 217, 215, 215),
                  width: 1,
                ),
                borderRadius: BorderRadius.zero,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
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
