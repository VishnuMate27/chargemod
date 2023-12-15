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
import 'package:vishnumate/view/otp/widgets/pin_input_field.dart';
import 'package:vishnumate/view_model/login_view_model.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPView extends StatefulWidget {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  @override
  Widget build(BuildContext context) {
    final _loginViewModel = Provider.of<LoginViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            size: 24.sp,
            color: Color(0xFF534B4A),
          ),
          onPressed: () {},
        ),
        title: Text(
          "Verification",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Color(0xFF2E2E2D),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        centerTitle: true,
      ),
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
              //! Welcome Back Text and Language selection dropdown
              Center(
                child: Text(
                  "We’ve send you the verification code on +91 ${_loginViewModel.phoneController.text}",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              //!Gap
              SizedBox(
                height: 20.h,
              ),
              ///! pinput
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: PinInputField(controller: _loginViewModel.otpController),
              ),
              //!Gap
              SizedBox(
                height: 20.h,
              ),
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
              //!Gap
              SizedBox(
                height: 315.h,
              ),
              GradientButton(
                  onPress: () {
                    _loginViewModel.verifyOTP(context);
                  },
                  title: "CONTINUE"),
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
