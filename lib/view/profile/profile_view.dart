import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vishnumate/res/components/gradient_button.dart';
import 'package:vishnumate/utils/routes/routes_name.dart';
import 'package:vishnumate/view/home/widgets/custom_bottom_navbar.dart';
import 'package:vishnumate/view/profile/widgets/supporting_widgets.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 24.h),
              Text(
                "Hello",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color(0xFF666766),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Hashim Ali",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              OptionsOne(),
              SizedBox(height: 24.h),
              GradientButton(
                  onPress: () {
                  },
                  title: "Buy Machines From chargeMOD"),
              SizedBox(height: 24.h),
              OptionsTwo(),
              SizedBox(height: 24.h),
              OptionsThree(),
              SizedBox(height: 24.h),
              GradientButton(
                  onPress: () {
                    Navigator.pushReplacementNamed(context, RoutesName.login);
                  },
                  title: "Logout"),
              SizedBox(height: 48.h),
              Center(
                child: Text(
                  "Copyright © 2022 BPM Power Pvt Ltd. All rights reserved.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(
                      color: Color(0xFF666766),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(),
    );
  }
}
