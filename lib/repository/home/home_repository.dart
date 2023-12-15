

import 'dart:convert';

import 'package:http/http.dart';

import 'package:vishnumate/data/network/BaseApiServices.dart';
import 'package:vishnumate/data/network/NetworkApiService.dart';
import 'package:vishnumate/model/registration/registration_req.dart';
import 'package:vishnumate/res/app_url.dart';

class HomeRepository  {

  BaseApiServices _apiServices = NetworkApiService() ;

  Future<dynamic> getPlacesApi()async{
    try{
      dynamic response = await _apiServices.getGetApiResponse(AppUrl.getplacesApiEndPoint);
      return response;
    }catch(e){
      throw e ;
    }
  }

}