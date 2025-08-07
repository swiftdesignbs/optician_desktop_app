import 'package:flutter/material.dart';

class OutLineBtn extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onPressed;
  final String ddName;
  final Color colors;

  const OutLineBtn({
    Key? key,
    required this.onPressed,
    required this.ddName,
    required this.height,
    required this.width,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        minimumSize: Size(width, height),
        side: BorderSide(color: colors), // Border color
      ),
      child: Text(
        ddName,
        style: TextStyle(
          fontFamily: 'FontMain',
          color: colors, // Text color matches the border color
          fontSize: 10 * textScale,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
