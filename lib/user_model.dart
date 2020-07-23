// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.id,
    this.name,
    this.email,
    this.age,
    this.phone,
    this.schedule,
  });

  int id;
  String name;
  String email;
  String age;
  String phone;
  DateTime schedule;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["Name"],
        email: json["Email"],
        age: json["Age"],
        phone: json["Phone"],
        schedule: DateTime.parse(json["Schedule"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Name": name,
        "Email": email,
        "Age": age,
        "Phone": phone,
        "Schedule": schedule.toIso8601String(),
      };
}
