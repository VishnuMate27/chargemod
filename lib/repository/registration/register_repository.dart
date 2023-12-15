

import 'dart:convert';

import 'package:http/http.dart';

import 'package:vishnumate/data/network/BaseApiServices.dart';
import 'package:vishnumate/data/network/NetworkApiService.dart';
import 'package:vishnumate/model/registration/registration_req.dart';
import 'package:vishnumate/res/app_url.dart';

class RegisterationRepository  {

  BaseApiServices _apiServices = NetworkApiService() ;

  Future<dynamic> registerApi(dynamic data, dynamic headers )async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.registerApiEndPoint, data, headers);
      return response;
    }catch(e){
      throw e ;
    }
  }
  Future<dynamic>verifyotpApi(dynamic data, dynamic headers )async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.verifyotpApiEndPoint, data, headers);
      return response;
    }catch(e){
      throw e ;
    }
  }

}