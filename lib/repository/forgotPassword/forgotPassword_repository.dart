

import 'dart:convert';

import 'package:http/http.dart';

import 'package:vishnumate/data/network/BaseApiServices.dart';
import 'package:vishnumate/data/network/NetworkApiService.dart';
import 'package:vishnumate/model/registration/registration_req.dart';
import 'package:vishnumate/res/app_url.dart';

class ForgotPasswordRepository  {

  BaseApiServices _apiServices = NetworkApiService() ;

  Future<dynamic> forgotpasswordApi(dynamic data, dynamic headers )async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.forgotpasswordApiEndPint, data, headers);
      return response;
    }catch(e){
      throw e ;
    }
  }

}