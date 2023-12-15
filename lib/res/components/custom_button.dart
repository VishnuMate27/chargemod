import 'package:flutter/material.dart';
import 'package:vishnumate/consts/consts.dart';

Widget ourButton({
  onPress,
  color,
  textColor,
  required String title,
  double? buttonSize,
}) {
  return SizedBox(
    width: buttonSize, // Set your desired width here
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.all(12),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(0.0), // Set radius to 0 for no rounding
        ),
      ),
      onPressed: onPress, // Corrected onPressed syntax
      child: Text(
        title,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
