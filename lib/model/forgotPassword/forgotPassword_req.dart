class TouristForgotPassword {
  String? touristEmail;

  TouristForgotPassword({this.touristEmail});

  TouristForgotPassword.fromJson(Map<String, dynamic> json) {
    touristEmail = json['tourist_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tourist_email'] = this.touristEmail;
    return data;
  }
}
