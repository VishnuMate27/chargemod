import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:vishnumate/model/login/login_req.dart';
import 'package:vishnumate/model/login/login_resp.dart';
import 'package:vishnumate/model/registration/registration_req.dart';
import 'package:vishnumate/model/registration/registration_resp.dart';
import 'package:vishnumate/repository/login/login_repository.dart';
import 'package:vishnumate/repository/registration/register_repository.dart';
import 'package:vishnumate/utils/Utils.dart';
import 'package:vishnumate/utils/routes/routes_name.dart';
import 'package:vishnumate/view_model/user_prefrences_view_model.dart';

import '../consts/consts.dart';

class LoginViewModel with ChangeNotifier {
  final _myRepo = LoginRepository();

  bool _loading = false;
  UserPreference userPreference = UserPreference();
  bool get loading => _loading;
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _otpController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();


  TextEditingController get phoneController => _phoneController;
  TextEditingController get otpController => _otpController;
  TextEditingController get firstNameController => _firstNameController;
  TextEditingController get lastNameController => _lastNameController;
  TextEditingController get emailController => _emailController;


  bool _loginLoading = false;
  bool get loginLoading => _loginLoading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setLoginLoading(bool value) {
    _loginLoading = value;
    notifyListeners();
  }

  Future<void> loginApi(BuildContext context) async {
    setLoginLoading(true);
    final headers = {
      'Content-Type':
      'application/json' // Replace 'token' with your actual cookie name.
    };
    var data = {
      "mobile": _phoneController.text,
    };

    _myRepo.loginApi(data, headers).then((value) {
      // setLoginLoading(false);
      // Utils.snackBar("Login Successful!", context, Colors.teal);
      // Navigator.pushNamed(context, RoutesName.home);
      LoginResponseModel loginRequestModel = LoginResponseModel(
          token: value['token'],
          isLogin: true
      );

      userPreference.saveLoginResponse(loginRequestModel).then((value){
        setLoginLoading(false);
        Utils.snackBar("Login Successful!", context, Colors.teal);
        Navigator.pushNamed(context, RoutesName.verifyOtp);
        print("Completed!!!");
      }).onError((error, stackTrace) {
        print(error);
      });

    }).onError((error, stackTrace) {
      setLoginLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

  Future<void> verifyOTP(BuildContext context) async {
    setLoginLoading(true);
    final headers = {
      'Content-Type':
      'application/json' // Replace 'token' with your actual cookie name.
    };
  var data = {
    "mobile": _phoneController.text,
    "otp": int.parse(_otpController.text)
  };

    _myRepo.verifyOtpApi(data, headers).then((value) {

      Navigator.pushNamed(context, RoutesName.updateProfile);
      // setLoginLoading(false);
      // Utils.snackBar("Login Successful!", context, Colors.teal);
      // Navigator.pushNamed(context, RoutesName.home);
      LoginResponseModel loginRequestModel = LoginResponseModel(
          token: value['token'],
          isLogin: true
      );



      userPreference.saveLoginResponse(loginRequestModel).then((value){
        setLoginLoading(false);
        Utils.snackBar("Login Successful!", context, Colors.teal);
        Navigator.pushNamed(context, RoutesName.updateProfile);
        print("Completed!!!");
      }).onError((error, stackTrace) {
        print(error);
      });

    }).onError((error, stackTrace) {
      setLoginLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

  Future<void> registerApi(BuildContext context) async {
    setLoginLoading(true);
    final headers = {
      'Content-Type':
      'application/json' // Replace 'token' with your actual cookie name.
    };
    var data = {
      "mobile": int.parse(phoneController.text),
      "firstName": firstNameController.text,
      "lastName": lastNameController.text,
      "email":emailController.text
    };

    _myRepo.registerApi(data, headers).then((value) {

      // setLoginLoading(false);
      // Utils.snackBar("Login Successful!", context, Colors.teal);
      // Navigator.pushNamed(context, RoutesName.home);
      LoginResponseModel loginRequestModel = LoginResponseModel(
          token: value['token'],
          isLogin: true
      );
      userPreference.saveLoginResponse(loginRequestModel).then((value){

        Utils.snackBar("Update Successful!", context, Colors.teal);
        Navigator.pushNamed(context, RoutesName.profile);
        print("Completed!!!");
      }).onError((error, stackTrace) {
        print(error);
      });

    }).onError((error, stackTrace) {
      setLoginLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

}
