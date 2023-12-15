import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class PinInputField extends StatelessWidget {
  const PinInputField({super.key,required this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Pinput(
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: controller,
      defaultPinTheme: PinTheme(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color:Color(0xFFE4DFDF), width: 1.5.w),
          borderRadius: BorderRadius.circular(10.r),
        ),
        height: 56.h,
      ),
      focusedPinTheme: PinTheme(
        textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontSize: 18.sp),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: Color(0xFFE4DFDF), width: 1.5.w),
        ),
        height: 56.h,
      ),
      submittedPinTheme: PinTheme(
        textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18.sp),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Color(0xFFE4DFDF), width: 1.5)),
        height: 56.h,
      ),
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      length: 4,
    );

  }
}
