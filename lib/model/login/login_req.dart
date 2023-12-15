class TouristLogin {
  String? touristEmail;
  String? touristPassword;

  TouristLogin({this.touristEmail, this.touristPassword});

  TouristLogin.fromJson(Map<String, dynamic> json) {
    touristEmail = json['tourist_email'];
    touristPassword = json['tourist_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tourist_email'] = this.touristEmail;
    data['tourist_password'] = this.touristPassword;
    return data;
  }
}
