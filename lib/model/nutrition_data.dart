// To parse this JSON data, do
//
//     final nutritionDataV2 = nutritionDataV2FromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'nutrition_data.freezed.dart';
part 'nutrition_data.g.dart';

NutritionDataV2 nutritionDataV2FromJson(String str) =>
    NutritionDataV2.fromJson(json.decode(str));

String nutritionDataV2ToJson(NutritionDataV2 data) =>
    json.encode(data.toJson());

@freezed
abstract class NutritionDataV2 with _$NutritionDataV2 {
  const factory NutritionDataV2({
    @required String? status,
    @required Data? data,
  }) = _NutritionDataV2;

  factory NutritionDataV2.fromJson(Map<String, dynamic> json) =>
      _$NutritionDataV2FromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @required String? name,
    @required Count? count,
    @required TotalNutritionValue? totalNutritionValue,
    @required String? source,
    @required List<Item>? generalItems,
    @required List<Item>? mineralItems,
    @required List<Item>? vitaminItems,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic>? json) => _$DataFromJson(json!);
}

@freezed
abstract class Count with _$Count {
  const factory Count({
    @required int? generalItemsCount,
    @required int? mineralItemCount,
    @required int? vitaminItemCount,
  }) = _Count;

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
}

@freezed
abstract class Item with _$Item {
  const factory Item({
    @required String? nutrientName,
    @required double? nutrientValue,
    @required Unit? unit,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

enum Unit { K_J, G, MG, UG }

final unitValues =
    EnumValues({"G": Unit.G, "kJ": Unit.K_J, "MG": Unit.MG, "UG": Unit.UG});

@freezed
abstract class TotalNutritionValue with _$TotalNutritionValue {
  const factory TotalNutritionValue({
    @required double? totalNutrients,
    @required double? totGNutrition,
    @required double? totMNutrition,
    @required double? totVNutrition,
  }) = _TotalNutritionValue;

  factory TotalNutritionValue.fromJson(Map<String, dynamic> json) =>
      _$TotalNutritionValueFromJson(json);
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
