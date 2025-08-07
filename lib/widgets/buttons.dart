import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onPressed;
  final String ddName;
  final Color colors;
  //final Color textColors;

  const Buttons({
    Key? key,
    required this.onPressed,
    required this.ddName,
    required this.height,
    required this.width,
    required this.colors,
    //required this.textColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          minimumSize: Size(width, height),
          backgroundColor: colors),
      child: Text(
        ddName,
        style: TextStyle(
            fontFamily: 'FontMain',
            color: Colors.white,
            fontSize: 10 * textScale,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
