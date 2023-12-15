import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget OptionsOne() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7.r),
      color: Colors.white,
      boxShadow: [BoxShadow(color: Color(0x80838782), blurRadius: 4.sp)],
    ),
    child: Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFEBEBEB),
                      radius: 30.r,
                    ),
                    Icon(
                      CupertinoIcons.chart_bar_circle,
                      size: 28.sp,
                    )
                  ],
                ),
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  "My Payments",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.chevron_right,
              size: 18.sp,
              color: Color(0xFF2E2E2D),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 10.w),
            Expanded(
              child: Divider(
                thickness: 2.0,
              ),
            ),
            SizedBox(width: 10.w),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFEBEBEB),
                      radius: 30.r,
                    ),
                    Icon(
                      CupertinoIcons.car_detailed,
                      size: 28.sp,
                    )
                  ],
                ),
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  "My Electric Vehicles",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.chevron_right,
              size: 18.sp,
              color: Color(0xFF2E2E2D),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 10.w),
            Expanded(
              child: Divider(
                thickness: 2.0,
              ),
            ),
            SizedBox(width: 10.w),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFEBEBEB),
                      radius: 30.r,
                    ),
                    Icon(
                      CupertinoIcons.heart,
                      size: 28.sp,
                    )
                  ],
                ),
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  "My Favourite Stations",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.chevron_right,
              size: 18.sp,
              color: Color(0xFF2E2E2D),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 10.w),
            Expanded(
              child: Divider(
                thickness: 2.0,
              ),
            ),
            SizedBox(width: 10.w),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFEBEBEB),
                      radius: 30.r,
                    ),
                    Icon(
                      Icons.workspace_premium_rounded,
                      size: 28.sp,
                    )
                  ],
                ),
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  "Alpha Membership",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.chevron_right,
              size: 18.sp,
              color: Color(0xFF2E2E2D),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    ),
  );
}

Widget OptionsTwo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7.r),
      color: Colors.white,
      boxShadow: [BoxShadow(color: Color(0x80838782), blurRadius: 4.sp)],
    ),
    child: Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFEBEBEB),
                      radius: 30.r,
                    ),
                    Icon(
                      CupertinoIcons.device_phone_portrait,
                      size: 28.sp,
                    )
                  ],
                ),
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  "My Devices",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.chevron_right,
              size: 18.sp,
              color: Color(0xFF2E2E2D),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 10.w),
            Expanded(
              child: Divider(
                thickness: 2.0,
              ),
            ),
            SizedBox(width: 10.w),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFEBEBEB),
                      radius: 30.r,
                    ),
                    Icon(
                      CupertinoIcons.cart,
                      size: 28.sp,
                    )
                  ],
                ),
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  "My Orders",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.chevron_right,
              size: 18.sp,
              color: Color(0xFF2E2E2D),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    ),
  );
}

Widget OptionsThree() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7.r),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Color(0x80838782), blurRadius: 4.sp)
      ],
    ),
    child: Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFEBEBEB),
                      radius: 30.r,
                    ),
                    Icon(
                      CupertinoIcons.question,
                      size: 28.sp,
                    )
                  ],
                ),
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  "Help",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.chevron_right,
              size: 18.sp,
              color: Color(0xFF2E2E2D),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 10.w),
            Expanded(
              child: Divider(
                thickness: 2.0,
              ),
            ),
            SizedBox(width: 10.w),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFEBEBEB),
                      radius: 30.r,
                    ),
                    Icon(
                      CupertinoIcons.hand_raised,
                      size: 28.sp,
                    )
                  ],
                ),
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  "Raise Complaint",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.chevron_right,
              size: 18.sp,
              color: Color(0xFF2E2E2D),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 10.w),
            Expanded(
              child: Divider(
                thickness: 2.0,
              ),
            ),
            SizedBox(width: 10.w),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFEBEBEB),
                      radius: 30.r,
                    ),
                    Icon(
                      CupertinoIcons.info,
                      size: 28.sp,
                    )
                  ],
                ),
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  "About Us",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.chevron_right,
              size: 18.sp,
              color: Color(0xFF2E2E2D),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 10.w),
            Expanded(
              child: Divider(
                thickness: 2.0,
              ),
            ),
            SizedBox(width: 10.w),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFEBEBEB),
                      radius: 30.r,
                    ),
                    Icon(
                      CupertinoIcons.doc_checkmark_fill,
                      size: 28.sp,
                    )
                  ],
                ),
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  "Privacy Policy",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.chevron_right,
              size: 18.sp,
              color: Color(0xFF2E2E2D),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    ),
  );
}