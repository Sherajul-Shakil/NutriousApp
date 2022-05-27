// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

Data2 dataFromJson(String str) => Data2.fromJson(json.decode(str));

String dataToJson(Data2 data) => json.encode(data.toJson());

class Data2 {
  Data2({
    this.data,
  });

  List<Datum>? data;

  factory Data2.fromJson(Map<String, dynamic> json) => Data2(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };

  @override
  String toString() => 'Data for ${data!.map((e) {
        return '${e.name},${e.probability}';
      }) ?? 'unknown'}';
}

class Datum {
  Datum({
    this.name,
    this.probability,
  });

  String? name;
  double? probability;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        probability: json["probability"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "probability": probability,
      };
}
