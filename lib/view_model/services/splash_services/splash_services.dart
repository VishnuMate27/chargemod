import 'dart:async';

import 'package:get/get.dart';
import 'package:vishnumate/utils/routes/routes_name.dart';
import 'package:vishnumate/view_model/user_prefrences_view_model.dart';


class SplashServices {
  UserPreference userPreference = UserPreference();

  void isLogin() {
    userPreference.getLoginResponse().then((value) {
      print(value.token);
      print(value.isLogin);
      if (value.isLogin == false || value.isLogin == null) {
        Timer(
          const Duration(seconds: 3),
              () => Get.toNamed(RoutesName.splash),
        );
      } else {
        Timer(
          const Duration(seconds: 3),
              () => Get.offAllNamed(RoutesName.home),
        );
      }
    });
  }
}
