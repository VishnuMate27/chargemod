import 'package:shared_preferences/shared_preferences.dart';
import 'package:vishnumate/model/login/login_resp.dart';

class UserPreference {
///!For Login

//////For saving token from shared preferences
Future<bool> saveLoginResponse(LoginResponseModel responseModel) async{
  SharedPreferences sp = await SharedPreferences.getInstance();
  sp.setString('token', responseModel.token.toString());
  sp.setBool('isLogin', responseModel.isLogin!);
  return true;
}

///For fetching token from shared preferences
Future<LoginResponseModel> getLoginResponse() async{
  SharedPreferences sp = await SharedPreferences.getInstance();
  String? token = sp.getString('token');
  bool? isLogin = sp.getBool('isLogin');
  return LoginResponseModel(
    token: token,
    isLogin: isLogin,
  );
}

///For clearing token value from shared preferences
Future<bool>removeLoginResponse() async{
  SharedPreferences sp = await SharedPreferences.getInstance();
  sp.setBool('isLogin', false);
  sp.clear();
  return true;
}
}