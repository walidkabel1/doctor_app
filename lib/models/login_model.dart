import 'dart:convert' as login_model;

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(login_model.json.decode(str));

String loginModelToJson(LoginModel data) =>
    login_model.json.encode(data.toJson());

class LoginModel {
  LoginModel({
    String? username,
    String? password,
  }) {
    _username = username;
    _password = password;
  }

  LoginModel.fromJson(dynamic json) {
    _username = json['username'];
    _password = json['password'];
  }

  String? _username;
  String? _password;

  String? get username => _username;

  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['password'] = _password;
    return map;
  }
}
