import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../consts/colors.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10.h, left: 2.w, right: 2.w),
          child: Container(
            height: 80.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.primaryBackground,
                boxShadow: [
                  BoxShadow(color: AppColors.cardShadow, blurRadius: 4.sp)
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_filled,
                          color: AppColors.primaryOrangeText,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: AppColors.primaryOrangeText,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_business_rounded,
                          color: AppColors.primaryOrangeText,
                        ),
                        Text(
                          "E-Mart",
                          style: TextStyle(
                            color: AppColors.primaryOrangeText,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //!Gap
                  SizedBox(
                    width: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: AppColors.primaryOrangeText,
                        ),
                        Text(
                          "Cart",
                          style: TextStyle(
                            color: AppColors.primaryOrangeText,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: AppColors.primaryOrangeText,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            color: AppColors.primaryOrangeText,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}