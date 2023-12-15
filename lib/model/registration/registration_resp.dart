class TouristModel {
  User? user;
  int? otp;
  String? userStatus;
  String? message;

  TouristModel({this.user, this.otp, this.userStatus, this.message});

  TouristModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    otp = json['otp'];
    userStatus = json['userStatus'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['otp'] = this.otp;
    data['userStatus'] = this.userStatus;
    data['message'] = this.message;
    return data;
  }
}

class User {
  String? touristName;
  String? touristEmail;
  String? touristPassword;
  String? touristCountry;
  String? touristState;
  int? touristAge;
  String? touristGender;
  String? touristWork;
  bool? verified;
  String? sId;
  int? iV;
  String? token;

  User(
      {this.touristName,
        this.touristEmail,
        this.touristPassword,
        this.touristCountry,
        this.touristState,
        this.touristAge,
        this.touristGender,
        this.touristWork,
        this.verified,
        this.sId,
        this.iV,
        this.token});

  User.fromJson(Map<String, dynamic> json) {
    touristName = json['tourist_name'];
    touristEmail = json['tourist_email'];
    touristPassword = json['tourist_password'];
    touristCountry = json['tourist_country'];
    touristState = json['tourist_state'];
    touristAge = json['tourist_age'];
    touristGender = json['tourist_gender'];
    touristWork = json['tourist_work'];
    verified = json['verified'];
    sId = json['_id'];
    iV = json['__v'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tourist_name'] = this.touristName;
    data['tourist_email'] = this.touristEmail;
    data['tourist_password'] = this.touristPassword;
    data['tourist_country'] = this.touristCountry;
    data['tourist_state'] = this.touristState;
    data['tourist_age'] = this.touristAge;
    data['tourist_gender'] = this.touristGender;
    data['tourist_work'] = this.touristWork;
    data['verified'] = this.verified;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    data['token'] = this.token;
    return data;
  }
}

class VerifyOTPResp {
  String? message;
  String? userStatus;
  int? otp;

  VerifyOTPResp({this.message, this.userStatus, this.otp});

  VerifyOTPResp.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    userStatus = json['userStatus'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['userStatus'] = this.userStatus;
    data['otp'] = this.otp;
    return data;
  }
}

