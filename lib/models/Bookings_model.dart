import 'dart:convert';

BookingsModel bookingsModelFromJson(String str) =>
    BookingsModel.fromJson(json.decode(str));

String bookingsModelToJson(BookingsModel data) => json.encode(data.toJson());

class BookingsModel {
  BookingsModel({
    int? id,
    dynamic patient,
    dynamic nurse,
    String? appointment,
    String? price,
  }) {
    _id = id;
    _patient = patient;
    _nurse = nurse;
    _appointment = appointment;
    _price = price;
  }

  BookingsModel.fromJson(dynamic json) {
    _id = json['id'];
    _patient = json['patient'];
    _nurse = json['nurse'];
    _appointment = json['appointment'];
    _price = json['price'];
  }

  int? _id;
  dynamic _patient;
  dynamic _nurse;
  String? _appointment;
  String? _price;

  int? get id => _id;

  dynamic get patient => _patient;

  dynamic get nurse => _nurse;

  String? get appointment => _appointment;

  String? get price => _price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['patient'] = _patient;
    map['nurse'] = _nurse;
    map['appointment'] = _appointment;
    map['price'] = _price;
    return map;
  }
}
