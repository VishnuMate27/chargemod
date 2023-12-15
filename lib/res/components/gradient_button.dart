import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vishnumate/consts/consts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientButton extends StatelessWidget {
  const GradientButton(
      {Key? key,
      required this.onPress,
      required this.title,
      this.height = 48,
      this.fontSize = 16,
      this.vPadding = 10})
      : super(key: key);

  final VoidCallback onPress;
  final String title;
  final double height;
  final double fontSize;
  final double vPadding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height.h,
        decoration: BoxDecoration(
          color: Color(0xFFE6740C),
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: vPadding.h),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontFamily: 'Popins',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: fontSize.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
