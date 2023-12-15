import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomInputField(String? hint,controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        hint!,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Color(0xFF2E2E2D),
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      SizedBox(
        height: 5.h,
      ),
      SizedBox(
        width: 305.w,
        child: TextFormField(
          textInputAction: TextInputAction.done,
          obscureText: false,
          controller: controller,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 8.h, horizontal: 18.w),
            border: InputBorder.none,
            hintStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Color(0x66676680),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            hintText: hint,
            // contentPadding: EdgeInsets.symmetric(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: Color(0xFFE4DFDF),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: Color(0xFFE4DFDF),
              ),
            ),
          ),
          onFieldSubmitted: (value) {
            // Utils.fieldFocusChange(context, currentFocusNode, nextFocusNode);
          },
        ),
      ),
    ],
  );
}
