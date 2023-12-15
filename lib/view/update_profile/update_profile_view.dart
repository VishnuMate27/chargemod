import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vishnumate/res/components/gradient_button.dart';
import 'package:vishnumate/view/update_profile/widgets/custom_text_field.dart';

import 'package:vishnumate/view_model/login_view_model.dart';



class UpdateProfileView extends StatefulWidget {
  const UpdateProfileView({super.key});

  @override
  State<UpdateProfileView> createState() => _UpdateProfileViewState();
}

class _UpdateProfileViewState extends State<UpdateProfileView> {
  @override
  Widget build(BuildContext context) {
    final _loginViewModel = Provider.of<LoginViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Update Profile",
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
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 27.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              CustomInputField("First Name",_loginViewModel.firstNameController),
              SizedBox(height: 20),
              CustomInputField("Last Name",_loginViewModel.lastNameController),
              SizedBox(height: 20),
              CustomInputField("E-mail",_loginViewModel.emailController),
              SizedBox(height: 20),
              Text(
                "Phone Number",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color(0xFF2E2E2D),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                _loginViewModel.phoneController.text,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color(0xFF666766),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 200.h,
              ),
              Center(
                child: Text(
                  "Completing Your Profile",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF2E2E2D),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Center(
                child: Text(
                  "This action will reflect in your activities and payments after saving. we ask for email details for recieving monthly activity and notifications.",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF666766),
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              //! Gradient Button For Login
              GradientButton(
                  onPress: () {
                    _loginViewModel.registerApi(context);
                  },
                  title: "Save Changes"),
            ],
          ),
        ),
      ),
    );
  }
}
