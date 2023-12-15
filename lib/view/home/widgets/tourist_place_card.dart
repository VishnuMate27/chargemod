import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vishnumate/consts/consts.dart';

class NearbyTouristPlaceCard extends StatelessWidget {
  String? destinationName = "destinationName";
  String? destinationDistance;
  String? summary = "summary";
  String? imageUrl;
  NearbyTouristPlaceCard({super.key,this.destinationName,this.summary,this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 234.w,
      decoration: BoxDecoration(
          color: AppColors.secondaryBackground,
          borderRadius: BorderRadius.circular(10.r),
          border:
          Border.all(width: 0.5.sp, color: AppColors.cardBorder),
          boxShadow: [
            BoxShadow(color: AppColors.cardShadow, blurRadius: 4.sp)
          ]),
      child: Row(
        children: [
          Padding(
            padding:
            EdgeInsets.symmetric(vertical: 9.h, horizontal: 9.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //! Card Heading
                Text(
                  destinationName!,
                  style: TextStyle(
                    color: AppColors.cardHeadingBlack,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                //! Card Sub Heading
                Text(
                  summary ?? 'Mahatma Gandhi \nkarmabhumi',
                  softWrap: true,
                  style: TextStyle(
                    color: AppColors.cardSubHeadingBlack,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                //! Rating Container
                Container(
                  height: 20.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: AppColors.cardRatingGreenColor,
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.cardShadow, blurRadius: 4.sp)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 8.sp,
                      ),
                      Text(
                        destinationDistance ?? " 0 km",
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
          ),
          Container(
            width: 124.w,
            height: 113.h,
            child: Image.network(
              imageUrl ?? "https://im.whatshot.in/img/2022/Apr/20170819-140051-3-2-cropped-1650289538.jpg",
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
