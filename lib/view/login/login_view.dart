import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vishnumate/consts/consts.dart';
import 'package:vishnumate/consts/strings.dart';
import 'package:vishnumate/res/components/gradient_button.dart';
import 'package:vishnumate/res/components/custom_textfield.dart';
import 'package:vishnumate/utils/routes/routes_name.dart';
import 'package:vishnumate/view/login/widgets/email_phone_container.dart';
import 'package:vishnumate/view_model/login_view_model.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final _loginViewModel = Provider.of<LoginViewModel>(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //!Gap
              SizedBox(
                height: 100.h,
              ),

              Center(
                child: Text(
                  "ChargeMOD",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                    color: Color(0xFF2E2E2D),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
              ),
              Center(
                child: Text(
                  "Let\'s Start",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                    color: Color(0xFF2E2E2D),
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700,
                  ),),
                ),
              ),
              Center(
                child: Text(
                  "From Login",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFFE6740C),
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              //!Gap
              SizedBox(
                height: 12.h,
              ),

              //!Gap
              SizedBox(
                height: 45.h,
              ),
              //!Gap
              SizedBox(
                height: 32.h,
              ),
              //! Email Text Filed
              Row(
                children: [
                  Container(
                    height: 45.h,
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE4DFDF), width: 1.0),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: CountryPickerDropdown(
                      initialValue: 'in',
                      icon: Container(
                        padding: EdgeInsets.only(left: 8.w),
                        child: Icon(
                          CupertinoIcons.chevron_down,
                          size: 16.sp,
                          weight: 10,
                          color: Color(0xFF534B4A),
                        ),
                      ),
                      itemBuilder: _buildDropdownItem,
                      onValuePicked: (Country country) {},
                    ),
                  ),
                  //!Gap
                  SizedBox(
                    width: 8.w,
                  ),
                  CustomTextField(
                    keyboardType: TextInputType.phone,
                    controller: _loginViewModel.phoneController,
                    hint: "Enter phone number",
                    leadingIcon: CupertinoIcons.phone,
                  ),
                ],
              ),
              //!Gap
              SizedBox(
                height: 17.h,
              ),
              //!Gap
              SizedBox(
                height: 23.h,
              ),
              //! Gradient Button For Login
              GradientButton(
                  onPress: () {
                    _loginViewModel.loginApi(context);
                  },
                  title: "Sent OTP"),
              //!Gap
              SizedBox(
                height: 23.h,
              ),

              Text(
                "By Continuing you agree to our",
                style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(
                    fontFamily: 'Poppins',
                    color: AppColors.primaryText,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.28.sp,
                  ),
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesName.register);
                    },
                    child: Text(
                      "Terms & Condition",
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: AppColors.secondaryOrangeText,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.28.sp)),
                    ),
                  ),
                  Text(
                    "and",
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                            fontFamily: 'Poppins',
                            color: AppColors.primaryText,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.28.sp)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesName.register);
                    },
                    child: Text(
                      "Privacy Policy",
                      style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                          fontFamily: 'ABeeZee',
                          color: AppColors.secondaryOrangeText,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.28.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildDropdownItem(Country country) => Container(
      child: CountryPickerUtils.getDefaultFlagImage(country),
      width: 32.w,
      height: 22.h,
    );
