import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vishnumate/consts/colors.dart';

class PastVisitedPlacesCard extends StatelessWidget {
  const PastVisitedPlacesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 224.h,
      decoration: BoxDecoration(
          color: AppColors.secondaryBackground,
          borderRadius: BorderRadius.circular(10.r),
          border:
          Border.all(width: 0.5.sp, color: AppColors.cardBorder),
          boxShadow: [
            BoxShadow(color: AppColors.cardShadow, blurRadius: 4.sp)
          ]),
      child: Column(
        children: [
          //! Image Container
          Container(
            height: 167.h,
            width: 369.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(100.r))
            ),
            child: Image.network(
              "https://media.webdunia.com/_media/mr/img/article/2021-02/17/full/1613552456-1166.jpeg",fit: BoxFit.fill,
            ),
          ),
          //!Gap
          SizedBox(
            height: 11.h,
          ),
          //! Row
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 14.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //!Heading Text
                    Text(
                      "Raigad Fort",
                      style: TextStyle(
                        color: AppColors.primaryOrangeText,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    //!SubHeading Text
                    Text(
                      "Capital of the Maratha Empire",
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                //! Rating Container
                Container(
                  height: 26.h,
                  width: 93.w,
                  decoration: BoxDecoration(
                    color: AppColors.cardRatingGreenColor,
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.cardShadow, blurRadius: 4.sp)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.history,
                        size: 10.sp,
                      ),
                      Text(
                        "5 months ago",
                        style: TextStyle(
                          color: AppColors.cardRatingText,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
