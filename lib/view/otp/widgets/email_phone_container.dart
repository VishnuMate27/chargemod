import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vishnumate/consts/colors.dart';



class EmailPhoneContainer extends StatelessWidget {
  const EmailPhoneContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 62.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
            color: AppColors.secondaryBackground,
            borderRadius: BorderRadius.circular(19.r)
        ),
        child: Row(
          children: [
            Container(
              height: 52.h,
              width: 160.w,
              decoration: BoxDecoration(
                  color: AppColors.primaryBackground,
                  borderRadius: BorderRadius.circular(19.r)
              ),
              child: Center(
                child: Text(
                  "hi",
                  style:  TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.28.sp
                  ),
                ),
              ),
            ),
            SizedBox(width: 40.w,),
            Text(
             "phone",
              style:  TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.28.sp
              ),
            ),
          ],
        )
    );
  }
}
