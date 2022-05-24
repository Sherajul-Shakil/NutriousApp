// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutritionDataV2 _$_$_NutritionDataV2FromJson(Map<String, dynamic> json) {
  return _$_NutritionDataV2(
    status: json['status'] as String?,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>?),
  );
}

Map<String, dynamic> _$_$_NutritionDataV2ToJson(_$_NutritionDataV2 instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    name: json['name'] as String?,
    count: json['count'] == null
        ? null
        : Count.fromJson(json['count'] as Map<String, dynamic>),
    totalNutritionValue: json['totalNutritionValue'] == null
        ? null
        : TotalNutritionValue.fromJson(
            json['totalNutritionValue'] as Map<String, dynamic>),
    source: json['source'] as String?,
    generalItems: (json['generalItems'] as List<dynamic>?)
        ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
        .toList(),
    mineralItems: (json['mineralItems'] as List<dynamic>?)
        ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
        .toList(),
    vitaminItems: (json['vitaminItems'] as List<dynamic>?)
        ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'name': instance.name,
      'count': instance.count,
      'totalNutritionValue': instance.totalNutritionValue,
      'source': instance.source,
      'generalItems': instance.generalItems,
      'mineralItems': instance.mineralItems,
      'vitaminItems': instance.vitaminItems,
    };

_$_Count _$_$_CountFromJson(Map<String, dynamic> json) {
  return _$_Count(
    generalItemsCount: json['generalItemsCount'] as int?,
    mineralItemCount: json['mineralItemCount'] as int?,
    vitaminItemCount: json['vitaminItemCount'] as int?,
  );
}

Map<String, dynamic> _$_$_CountToJson(_$_Count instance) => <String, dynamic>{
      'generalItemsCount': instance.generalItemsCount,
      'mineralItemCount': instance.mineralItemCount,
      'vitaminItemCount': instance.vitaminItemCount,
    };

_$_Item _$_$_ItemFromJson(Map<String, dynamic> json) {
  return _$_Item(
    nutrientName: json['nutrientName'] as String?,
    nutrientValue: (json['nutrientValue'] as num?)?.toDouble(),
    unit: _$enumDecodeNullable(_$UnitEnumMap, json['unit']),
  );
}

Map<String, dynamic> _$_$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'nutrientName': instance.nutrientName,
      'nutrientValue': instance.nutrientValue,
      'unit': _$UnitEnumMap[instance.unit],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$UnitEnumMap = {
  Unit.K_J: 'kJ',
  Unit.G: 'G',
  Unit.MG: 'MG',
  Unit.UG: 'UG',
};

_$_TotalNutritionValue _$_$_TotalNutritionValueFromJson(
    Map<String, dynamic> json) {
  return _$_TotalNutritionValue(
    totalNutrients: (json['totalNutrients'] as num?)?.toDouble(),
    totGNutrition: (json['totGNutrition'] as num?)?.toDouble(),
    totMNutrition: (json['totMNutrition'] as num?)?.toDouble(),
    totVNutrition: (json['totVNutrition'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_TotalNutritionValueToJson(
        _$_TotalNutritionValue instance) =>
    <String, dynamic>{
      'totalNutrients': instance.totalNutrients,
      'totGNutrition': instance.totGNutrition,
      'totMNutrition': instance.totMNutrition,
      'totVNutrition': instance.totVNutrition,
    };
