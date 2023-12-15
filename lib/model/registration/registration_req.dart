class TouristInfoModel {
  String? touristName;
  String? touristEmail;
  String? touristCountry;
  String? touristState;
  int? touristAge;
  String? touristGender;
  String? touristWork;
  String? touristPassword;

  TouristInfoModel(
      {this.touristName,
        this.touristEmail,
        this.touristCountry,
        this.touristState,
        this.touristAge,
        this.touristGender,
        this.touristWork,
        this.touristPassword});

  TouristInfoModel.fromJson(Map<String, dynamic> json) {
    touristName = json['tourist_name'];
    touristEmail = json['tourist_email'];
    touristCountry = json['tourist_country'];
    touristState = json['tourist_state'];
    touristAge = json['tourist_age'];
    touristGender = json['tourist_gender'];
    touristWork = json['tourist_work'];
    touristPassword = json['tourist_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tourist_name'] = this.touristName;
    data['tourist_email'] = this.touristEmail;
    data['tourist_country'] = this.touristCountry;
    data['tourist_state'] = this.touristState;
    data['tourist_age'] = this.touristAge;
    data['tourist_gender'] = this.touristGender;
    data['tourist_work'] = this.touristWork;
    data['tourist_password'] = this.touristPassword;
    return data;
  }
}

class VerifyOTPReq {
  String? touristEmail;
  String? otp;

  VerifyOTPReq({this.touristEmail, this.otp});

  VerifyOTPReq.fromJson(Map<String, dynamic> json) {
    touristEmail = json['tourist_email'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tourist_email'] = this.touristEmail;
    data['otp'] = this.otp;
    return data;
  }
}
