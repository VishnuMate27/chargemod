class LoginResponseModel {
  String? sId;
  String? touristName;
  String? touristEmail;
  String? touristPassword;
  String? touristCountry;
  String? touristState;
  int? touristAge;
  String? touristGender;
  String? touristWork;
  bool? verified;
  int? iV;
  String? token;
  bool? isLogin = false;

  LoginResponseModel(
      {this.sId,
        this.touristName,
        this.touristEmail,
        this.touristPassword,
        this.touristCountry,
        this.touristState,
        this.touristAge,
        this.touristGender,
        this.touristWork,
        this.verified,
        this.iV,
        this.token,
        this.isLogin
      });

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    touristName = json['tourist_name'];
    touristEmail = json['tourist_email'];
    touristPassword = json['tourist_password'];
    touristCountry = json['tourist_country'];
    touristState = json['tourist_state'];
    touristAge = json['tourist_age'];
    touristGender = json['tourist_gender'];
    touristWork = json['tourist_work'];
    verified = json['verified'];
    iV = json['__v'];
    token = json['token'];
    isLogin = json['isLogin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['tourist_name'] = this.touristName;
    data['tourist_email'] = this.touristEmail;
    data['tourist_password'] = this.touristPassword;
    data['tourist_country'] = this.touristCountry;
    data['tourist_state'] = this.touristState;
    data['tourist_age'] = this.touristAge;
    data['tourist_gender'] = this.touristGender;
    data['tourist_work'] = this.touristWork;
    data['verified'] = this.verified;
    data['__v'] = this.iV;
    data['token'] = this.token;
    data['isLogin'] = this.isLogin;
    return data;
  }
}
