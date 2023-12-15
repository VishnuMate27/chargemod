import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vishnumate/utils/routes/routes_name.dart';
import 'package:vishnumate/view/home/home_view.dart';
import 'package:vishnumate/view/login/login_view.dart';
import 'package:vishnumate/view/otp/otp_view.dart';
import 'package:vishnumate/view/profile/profile_view.dart';
import 'package:vishnumate/view/update_profile/update_profile_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      case RoutesName.verifyOtp:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OTPView());
      case RoutesName.profile:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ProfileView());
      case RoutesName.updateProfile:
        return MaterialPageRoute(
            builder: (BuildContext context) => const UpdateProfileView());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeView());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          );
        });
    }
  }
}
