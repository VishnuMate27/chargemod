import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vishnumate/consts/consts.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [BoxShadow(color: AppColors.cardShadow, blurRadius: 4.sp)],
      ),
      child: TextFormField(
        showCursor: false,
        cursorHeight: 28.h,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.symmetric(vertical: 12.h),
          border: InputBorder.none,
          hintStyle: TextStyle(color: AppColors.secondaryText),
          hintText: "Search",
          isDense: true,
          fillColor: AppColors.secondaryBackground,
          filled: true,
          // contentPadding: EdgeInsets.symmetric(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          prefixIcon: Padding(
            padding: EdgeInsetsDirectional.only(start: 24.w, end: 12.w),
            child:
                Icon(Icons.search, size: 24.sp, color: AppColors.textFieldText),
          ),
        ),
        onFieldSubmitted: (value) {
          // Utils.fieldFocusChange(context, currentFocusNode, nextFocusNode);
        },
      ),
    );
  }
}
