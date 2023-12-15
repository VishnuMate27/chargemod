import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:vishnumate/repository/home/home_repository.dart';
import 'package:vishnumate/utils/Utils.dart';
import 'package:vishnumate/view_model/user_prefrences_view_model.dart';


import '../consts/consts.dart';

class HomeViewModel with ChangeNotifier {
  final _myRepo = HomeRepository();

  bool _loading = false;
  UserPreference userPreference = UserPreference();
  bool get loading => _loading;
  List<dynamic>? _destinationDetails;


  List<dynamic>? get destinationDetails => _destinationDetails;


  bool _loginLoading = false;
  bool get loginLoading => _loginLoading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  SetDestinationDetails(List<dynamic> value) {
    _destinationDetails = value;
    notifyListeners();
  }


  setLoginLoading(bool value) {
    _loginLoading = value;
    notifyListeners();
  }

  Future<void> getPlacesApi(BuildContext context) async {
    setLoginLoading(true);
    final headers = { // Replace 'token' with your actual cookie name.
    };

    _myRepo.getPlacesApi().then((value) {
      setLoginLoading(false);
      SetDestinationDetails(value["data"]);
      // print(value["data"][0]["destinationName"]);
     // print(value["data"]);
    }).onError((error, stackTrace) {
      setLoginLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
  /// Method to trigger all the API functions of home screen
  Future<void> initHome(BuildContext context) async {
    getPlacesApi(context);
    notifyListeners();
  }
}
