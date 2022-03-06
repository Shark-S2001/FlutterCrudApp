// To parse this JSON data, do
//
//     final selectData = selectDataFromJson(jsonString);

import 'dart:convert';

List<SelectData> selectDataFromJson(String str) => List<SelectData>.from(json.decode(str).map((x) => SelectData.fromJson(x)));

String selectDataToJson(List<SelectData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SelectData {
  SelectData({
    required this.id,
    required this.num1,
    required this.num2,
  });

  String id;
  String num1;
  String num2;

  factory SelectData.fromJson(Map<String, dynamic> json) => SelectData(
    id: json["id"],
    num1: json["num1"],
    num2: json["num2"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "num1": num1,
    "num2": num2,
  };
}

