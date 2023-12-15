import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vishnumate/consts/consts.dart';
import 'package:vishnumate/utils/Utils.dart';

Widget CustomTextField(
    {String? hint,
    bool? obscureText,
    controller,
    IconData? leadingIcon,
    BuildContext? context,
    FocusNode? currentFocusNode,
    FocusNode? nextFocusNode,
    TextInputType? keyboardType}) {
  return SizedBox(
    width: 219.w,
    child: TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      maxLength: 10,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
      ],
      textInputAction: TextInputAction.done,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 8.h),
        border: InputBorder.none,
        counterText: "",
        hintStyle: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Color(0xFF534B4A),
            fontWeight: FontWeight.w400
          ),
        ),

        hintText: hint,
        // contentPadding: EdgeInsets.symmetric(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Color(0xFFE4DFDF)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Color(0xFFE4DFDF)),
        ),
        prefixIcon: Padding(
          padding: EdgeInsetsDirectional.only(start: 14.w, end: 14.w),
          child: Icon(
            leadingIcon,
            size: 24.sp,
            color: Color(0xFF534B4A),
            weight: 10,
          ),
        ),
      ),
      onFieldSubmitted: (value) {
        // Utils.fieldFocusChange(context, currentFocusNode, nextFocusNode);
      },
    ),
  );
}
