import 'dart:convert' show json;

RegisterModel registerModelFromJson(String str) {
  return RegisterModel.fromJson(json.decode(str));
}

String registerModelToJson(RegisterModel data) {
  return json.encode(data.toJson());
}

class RegisterModel {
  RegisterModel({
    String? firstName,
    String? lastName,
    String? username,
    String? password,
    String? password2,
    String? email,
    String? nationalId,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _username = username;
    _password = password;
    _password2 = password2;
    _email = email;
    _nationalId = nationalId;
  }

  RegisterModel.fromJson(dynamic json) {
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _username = json['username'];
    _password = json['password'];
    _password2 = json['password2'];
    _email = json['email'];
    _nationalId = json['national_id'];
  }

  String? _firstName;
  String? _lastName;
  String? _username;
  String? _password;
  String? _password2;
  String? _email;
  String? _nationalId;

  String? get firstName => _firstName;

  String? get lastName => _lastName;

  String? get username => _username;

  String? get password => _password;

  String? get password2 => _password2;

  String? get email => _email;

  String? get nationalId => _nationalId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['username'] = _username;
    map['password'] = _password;
    map['password2'] = _password2;
    map['email'] = _email;
    map['national_id'] = _nationalId;
    return map;
  }
}
