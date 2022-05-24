// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'nutrition_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NutritionDataV2 _$NutritionDataV2FromJson(Map<String, dynamic> json) {
  return _NutritionDataV2.fromJson(json);
}

/// @nodoc
class _$NutritionDataV2TearOff {
  const _$NutritionDataV2TearOff();

  _NutritionDataV2 call({String? status, Data? data}) {
    return _NutritionDataV2(
      status: status,
      data: data,
    );
  }

  NutritionDataV2 fromJson(Map<String, Object> json) {
    return NutritionDataV2.fromJson(json);
  }
}

/// @nodoc
const $NutritionDataV2 = _$NutritionDataV2TearOff();

/// @nodoc
mixin _$NutritionDataV2 {
  String? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionDataV2CopyWith<NutritionDataV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionDataV2CopyWith<$Res> {
  factory $NutritionDataV2CopyWith(
          NutritionDataV2 value, $Res Function(NutritionDataV2) then) =
      _$NutritionDataV2CopyWithImpl<$Res>;
  $Res call({String? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$NutritionDataV2CopyWithImpl<$Res>
    implements $NutritionDataV2CopyWith<$Res> {
  _$NutritionDataV2CopyWithImpl(this._value, this._then);

  final NutritionDataV2 _value;
  // ignore: unused_field
  final $Res Function(NutritionDataV2) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$NutritionDataV2CopyWith<$Res>
    implements $NutritionDataV2CopyWith<$Res> {
  factory _$NutritionDataV2CopyWith(
          _NutritionDataV2 value, $Res Function(_NutritionDataV2) then) =
      __$NutritionDataV2CopyWithImpl<$Res>;
  @override
  $Res call({String? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$NutritionDataV2CopyWithImpl<$Res>
    extends _$NutritionDataV2CopyWithImpl<$Res>
    implements _$NutritionDataV2CopyWith<$Res> {
  __$NutritionDataV2CopyWithImpl(
      _NutritionDataV2 _value, $Res Function(_NutritionDataV2) _then)
      : super(_value, (v) => _then(v as _NutritionDataV2));

  @override
  _NutritionDataV2 get _value => super._value as _NutritionDataV2;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_NutritionDataV2(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutritionDataV2 implements _NutritionDataV2 {
  const _$_NutritionDataV2({this.status, this.data});

  factory _$_NutritionDataV2.fromJson(Map<String, dynamic> json) =>
      _$_$_NutritionDataV2FromJson(json);

  @override
  final String? status;
  @override
  final Data? data;

  @override
  String toString() {
    return 'NutritionDataV2(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NutritionDataV2 &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$NutritionDataV2CopyWith<_NutritionDataV2> get copyWith =>
      __$NutritionDataV2CopyWithImpl<_NutritionDataV2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NutritionDataV2ToJson(this);
  }
}

abstract class _NutritionDataV2 implements NutritionDataV2 {
  const factory _NutritionDataV2({String? status, Data? data}) =
      _$_NutritionDataV2;

  factory _NutritionDataV2.fromJson(Map<String, dynamic> json) =
      _$_NutritionDataV2.fromJson;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NutritionDataV2CopyWith<_NutritionDataV2> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      {String? name,
      Count? count,
      TotalNutritionValue? totalNutritionValue,
      String? source,
      List<Item>? generalItems,
      List<Item>? mineralItems,
      List<Item>? vitaminItems}) {
    return _Data(
      name: name,
      count: count,
      totalNutritionValue: totalNutritionValue,
      source: source,
      generalItems: generalItems,
      mineralItems: mineralItems,
      vitaminItems: vitaminItems,
    );
  }

  Data fromJson(Map<String, Object> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  String? get name => throw _privateConstructorUsedError;
  Count? get count => throw _privateConstructorUsedError;
  TotalNutritionValue? get totalNutritionValue =>
      throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  List<Item>? get generalItems => throw _privateConstructorUsedError;
  List<Item>? get mineralItems => throw _privateConstructorUsedError;
  List<Item>? get vitaminItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      Count? count,
      TotalNutritionValue? totalNutritionValue,
      String? source,
      List<Item>? generalItems,
      List<Item>? mineralItems,
      List<Item>? vitaminItems});

  $CountCopyWith<$Res>? get count;
  $TotalNutritionValueCopyWith<$Res>? get totalNutritionValue;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? count = freezed,
    Object? totalNutritionValue = freezed,
    Object? source = freezed,
    Object? generalItems = freezed,
    Object? mineralItems = freezed,
    Object? vitaminItems = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as Count?,
      totalNutritionValue: totalNutritionValue == freezed
          ? _value.totalNutritionValue
          : totalNutritionValue // ignore: cast_nullable_to_non_nullable
              as TotalNutritionValue?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      generalItems: generalItems == freezed
          ? _value.generalItems
          : generalItems // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      mineralItems: mineralItems == freezed
          ? _value.mineralItems
          : mineralItems // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      vitaminItems: vitaminItems == freezed
          ? _value.vitaminItems
          : vitaminItems // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }

  @override
  $CountCopyWith<$Res>? get count {
    if (_value.count == null) {
      return null;
    }

    return $CountCopyWith<$Res>(_value.count!, (value) {
      return _then(_value.copyWith(count: value));
    });
  }

  @override
  $TotalNutritionValueCopyWith<$Res>? get totalNutritionValue {
    if (_value.totalNutritionValue == null) {
      return null;
    }

    return $TotalNutritionValueCopyWith<$Res>(_value.totalNutritionValue!,
        (value) {
      return _then(_value.copyWith(totalNutritionValue: value));
    });
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      Count? count,
      TotalNutritionValue? totalNutritionValue,
      String? source,
      List<Item>? generalItems,
      List<Item>? mineralItems,
      List<Item>? vitaminItems});

  @override
  $CountCopyWith<$Res>? get count;
  @override
  $TotalNutritionValueCopyWith<$Res>? get totalNutritionValue;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? name = freezed,
    Object? count = freezed,
    Object? totalNutritionValue = freezed,
    Object? source = freezed,
    Object? generalItems = freezed,
    Object? mineralItems = freezed,
    Object? vitaminItems = freezed,
  }) {
    return _then(_Data(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as Count?,
      totalNutritionValue: totalNutritionValue == freezed
          ? _value.totalNutritionValue
          : totalNutritionValue // ignore: cast_nullable_to_non_nullable
              as TotalNutritionValue?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      generalItems: generalItems == freezed
          ? _value.generalItems
          : generalItems // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      mineralItems: mineralItems == freezed
          ? _value.mineralItems
          : mineralItems // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      vitaminItems: vitaminItems == freezed
          ? _value.vitaminItems
          : vitaminItems // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.name,
      this.count,
      this.totalNutritionValue,
      this.source,
      this.generalItems,
      this.mineralItems,
      this.vitaminItems});

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

  @override
  final String? name;
  @override
  final Count? count;
  @override
  final TotalNutritionValue? totalNutritionValue;
  @override
  final String? source;
  @override
  final List<Item>? generalItems;
  @override
  final List<Item>? mineralItems;
  @override
  final List<Item>? vitaminItems;

  @override
  String toString() {
    return 'Data(name: $name, count: $count, totalNutritionValue: $totalNutritionValue, source: $source, generalItems: $generalItems, mineralItems: $mineralItems, vitaminItems: $vitaminItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.totalNutritionValue, totalNutritionValue) ||
                const DeepCollectionEquality()
                    .equals(other.totalNutritionValue, totalNutritionValue)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.generalItems, generalItems) ||
                const DeepCollectionEquality()
                    .equals(other.generalItems, generalItems)) &&
            (identical(other.mineralItems, mineralItems) ||
                const DeepCollectionEquality()
                    .equals(other.mineralItems, mineralItems)) &&
            (identical(other.vitaminItems, vitaminItems) ||
                const DeepCollectionEquality()
                    .equals(other.vitaminItems, vitaminItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(totalNutritionValue) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(generalItems) ^
      const DeepCollectionEquality().hash(mineralItems) ^
      const DeepCollectionEquality().hash(vitaminItems);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {String? name,
      Count? count,
      TotalNutritionValue? totalNutritionValue,
      String? source,
      List<Item>? generalItems,
      List<Item>? mineralItems,
      List<Item>? vitaminItems}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  Count? get count => throw _privateConstructorUsedError;
  @override
  TotalNutritionValue? get totalNutritionValue =>
      throw _privateConstructorUsedError;
  @override
  String? get source => throw _privateConstructorUsedError;
  @override
  List<Item>? get generalItems => throw _privateConstructorUsedError;
  @override
  List<Item>? get mineralItems => throw _privateConstructorUsedError;
  @override
  List<Item>? get vitaminItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

Count _$CountFromJson(Map<String, dynamic> json) {
  return _Count.fromJson(json);
}

/// @nodoc
class _$CountTearOff {
  const _$CountTearOff();

  _Count call(
      {int? generalItemsCount, int? mineralItemCount, int? vitaminItemCount}) {
    return _Count(
      generalItemsCount: generalItemsCount,
      mineralItemCount: mineralItemCount,
      vitaminItemCount: vitaminItemCount,
    );
  }

  Count fromJson(Map<String, Object> json) {
    return Count.fromJson(json);
  }
}

/// @nodoc
const $Count = _$CountTearOff();

/// @nodoc
mixin _$Count {
  int? get generalItemsCount => throw _privateConstructorUsedError;
  int? get mineralItemCount => throw _privateConstructorUsedError;
  int? get vitaminItemCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountCopyWith<Count> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountCopyWith<$Res> {
  factory $CountCopyWith(Count value, $Res Function(Count) then) =
      _$CountCopyWithImpl<$Res>;
  $Res call(
      {int? generalItemsCount, int? mineralItemCount, int? vitaminItemCount});
}

/// @nodoc
class _$CountCopyWithImpl<$Res> implements $CountCopyWith<$Res> {
  _$CountCopyWithImpl(this._value, this._then);

  final Count _value;
  // ignore: unused_field
  final $Res Function(Count) _then;

  @override
  $Res call({
    Object? generalItemsCount = freezed,
    Object? mineralItemCount = freezed,
    Object? vitaminItemCount = freezed,
  }) {
    return _then(_value.copyWith(
      generalItemsCount: generalItemsCount == freezed
          ? _value.generalItemsCount
          : generalItemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      mineralItemCount: mineralItemCount == freezed
          ? _value.mineralItemCount
          : mineralItemCount // ignore: cast_nullable_to_non_nullable
              as int?,
      vitaminItemCount: vitaminItemCount == freezed
          ? _value.vitaminItemCount
          : vitaminItemCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CountCopyWith<$Res> implements $CountCopyWith<$Res> {
  factory _$CountCopyWith(_Count value, $Res Function(_Count) then) =
      __$CountCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? generalItemsCount, int? mineralItemCount, int? vitaminItemCount});
}

/// @nodoc
class __$CountCopyWithImpl<$Res> extends _$CountCopyWithImpl<$Res>
    implements _$CountCopyWith<$Res> {
  __$CountCopyWithImpl(_Count _value, $Res Function(_Count) _then)
      : super(_value, (v) => _then(v as _Count));

  @override
  _Count get _value => super._value as _Count;

  @override
  $Res call({
    Object? generalItemsCount = freezed,
    Object? mineralItemCount = freezed,
    Object? vitaminItemCount = freezed,
  }) {
    return _then(_Count(
      generalItemsCount: generalItemsCount == freezed
          ? _value.generalItemsCount
          : generalItemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      mineralItemCount: mineralItemCount == freezed
          ? _value.mineralItemCount
          : mineralItemCount // ignore: cast_nullable_to_non_nullable
              as int?,
      vitaminItemCount: vitaminItemCount == freezed
          ? _value.vitaminItemCount
          : vitaminItemCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Count implements _Count {
  const _$_Count(
      {this.generalItemsCount, this.mineralItemCount, this.vitaminItemCount});

  factory _$_Count.fromJson(Map<String, dynamic> json) =>
      _$_$_CountFromJson(json);

  @override
  final int? generalItemsCount;
  @override
  final int? mineralItemCount;
  @override
  final int? vitaminItemCount;

  @override
  String toString() {
    return 'Count(generalItemsCount: $generalItemsCount, mineralItemCount: $mineralItemCount, vitaminItemCount: $vitaminItemCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Count &&
            (identical(other.generalItemsCount, generalItemsCount) ||
                const DeepCollectionEquality()
                    .equals(other.generalItemsCount, generalItemsCount)) &&
            (identical(other.mineralItemCount, mineralItemCount) ||
                const DeepCollectionEquality()
                    .equals(other.mineralItemCount, mineralItemCount)) &&
            (identical(other.vitaminItemCount, vitaminItemCount) ||
                const DeepCollectionEquality()
                    .equals(other.vitaminItemCount, vitaminItemCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(generalItemsCount) ^
      const DeepCollectionEquality().hash(mineralItemCount) ^
      const DeepCollectionEquality().hash(vitaminItemCount);

  @JsonKey(ignore: true)
  @override
  _$CountCopyWith<_Count> get copyWith =>
      __$CountCopyWithImpl<_Count>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountToJson(this);
  }
}

abstract class _Count implements Count {
  const factory _Count(
      {int? generalItemsCount,
      int? mineralItemCount,
      int? vitaminItemCount}) = _$_Count;

  factory _Count.fromJson(Map<String, dynamic> json) = _$_Count.fromJson;

  @override
  int? get generalItemsCount => throw _privateConstructorUsedError;
  @override
  int? get mineralItemCount => throw _privateConstructorUsedError;
  @override
  int? get vitaminItemCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountCopyWith<_Count> get copyWith => throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call({String? nutrientName, double? nutrientValue, Unit? unit}) {
    return _Item(
      nutrientName: nutrientName,
      nutrientValue: nutrientValue,
      unit: unit,
    );
  }

  Item fromJson(Map<String, Object> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  String? get nutrientName => throw _privateConstructorUsedError;
  double? get nutrientValue => throw _privateConstructorUsedError;
  Unit? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call({String? nutrientName, double? nutrientValue, Unit? unit});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? nutrientName = freezed,
    Object? nutrientValue = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      nutrientName: nutrientName == freezed
          ? _value.nutrientName
          : nutrientName // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrientValue: nutrientValue == freezed
          ? _value.nutrientValue
          : nutrientValue // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit?,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call({String? nutrientName, double? nutrientValue, Unit? unit});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? nutrientName = freezed,
    Object? nutrientValue = freezed,
    Object? unit = freezed,
  }) {
    return _then(_Item(
      nutrientName: nutrientName == freezed
          ? _value.nutrientName
          : nutrientName // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrientValue: nutrientValue == freezed
          ? _value.nutrientValue
          : nutrientValue // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  const _$_Item({this.nutrientName, this.nutrientValue, this.unit});

  factory _$_Item.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemFromJson(json);

  @override
  final String? nutrientName;
  @override
  final double? nutrientValue;
  @override
  final Unit? unit;

  @override
  String toString() {
    return 'Item(nutrientName: $nutrientName, nutrientValue: $nutrientValue, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.nutrientName, nutrientName) ||
                const DeepCollectionEquality()
                    .equals(other.nutrientName, nutrientName)) &&
            (identical(other.nutrientValue, nutrientValue) ||
                const DeepCollectionEquality()
                    .equals(other.nutrientValue, nutrientValue)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nutrientName) ^
      const DeepCollectionEquality().hash(nutrientValue) ^
      const DeepCollectionEquality().hash(unit);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {String? nutrientName, double? nutrientValue, Unit? unit}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String? get nutrientName => throw _privateConstructorUsedError;
  @override
  double? get nutrientValue => throw _privateConstructorUsedError;
  @override
  Unit? get unit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}

TotalNutritionValue _$TotalNutritionValueFromJson(Map<String, dynamic> json) {
  return _TotalNutritionValue.fromJson(json);
}

/// @nodoc
class _$TotalNutritionValueTearOff {
  const _$TotalNutritionValueTearOff();

  _TotalNutritionValue call(
      {double? totalNutrients,
      double? totGNutrition,
      double? totMNutrition,
      double? totVNutrition}) {
    return _TotalNutritionValue(
      totalNutrients: totalNutrients,
      totGNutrition: totGNutrition,
      totMNutrition: totMNutrition,
      totVNutrition: totVNutrition,
    );
  }

  TotalNutritionValue fromJson(Map<String, Object> json) {
    return TotalNutritionValue.fromJson(json);
  }
}

/// @nodoc
const $TotalNutritionValue = _$TotalNutritionValueTearOff();

/// @nodoc
mixin _$TotalNutritionValue {
  double? get totalNutrients => throw _privateConstructorUsedError;
  double? get totGNutrition => throw _privateConstructorUsedError;
  double? get totMNutrition => throw _privateConstructorUsedError;
  double? get totVNutrition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalNutritionValueCopyWith<TotalNutritionValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalNutritionValueCopyWith<$Res> {
  factory $TotalNutritionValueCopyWith(
          TotalNutritionValue value, $Res Function(TotalNutritionValue) then) =
      _$TotalNutritionValueCopyWithImpl<$Res>;
  $Res call(
      {double? totalNutrients,
      double? totGNutrition,
      double? totMNutrition,
      double? totVNutrition});
}

/// @nodoc
class _$TotalNutritionValueCopyWithImpl<$Res>
    implements $TotalNutritionValueCopyWith<$Res> {
  _$TotalNutritionValueCopyWithImpl(this._value, this._then);

  final TotalNutritionValue _value;
  // ignore: unused_field
  final $Res Function(TotalNutritionValue) _then;

  @override
  $Res call({
    Object? totalNutrients = freezed,
    Object? totGNutrition = freezed,
    Object? totMNutrition = freezed,
    Object? totVNutrition = freezed,
  }) {
    return _then(_value.copyWith(
      totalNutrients: totalNutrients == freezed
          ? _value.totalNutrients
          : totalNutrients // ignore: cast_nullable_to_non_nullable
              as double?,
      totGNutrition: totGNutrition == freezed
          ? _value.totGNutrition
          : totGNutrition // ignore: cast_nullable_to_non_nullable
              as double?,
      totMNutrition: totMNutrition == freezed
          ? _value.totMNutrition
          : totMNutrition // ignore: cast_nullable_to_non_nullable
              as double?,
      totVNutrition: totVNutrition == freezed
          ? _value.totVNutrition
          : totVNutrition // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$TotalNutritionValueCopyWith<$Res>
    implements $TotalNutritionValueCopyWith<$Res> {
  factory _$TotalNutritionValueCopyWith(_TotalNutritionValue value,
          $Res Function(_TotalNutritionValue) then) =
      __$TotalNutritionValueCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? totalNutrients,
      double? totGNutrition,
      double? totMNutrition,
      double? totVNutrition});
}

/// @nodoc
class __$TotalNutritionValueCopyWithImpl<$Res>
    extends _$TotalNutritionValueCopyWithImpl<$Res>
    implements _$TotalNutritionValueCopyWith<$Res> {
  __$TotalNutritionValueCopyWithImpl(
      _TotalNutritionValue _value, $Res Function(_TotalNutritionValue) _then)
      : super(_value, (v) => _then(v as _TotalNutritionValue));

  @override
  _TotalNutritionValue get _value => super._value as _TotalNutritionValue;

  @override
  $Res call({
    Object? totalNutrients = freezed,
    Object? totGNutrition = freezed,
    Object? totMNutrition = freezed,
    Object? totVNutrition = freezed,
  }) {
    return _then(_TotalNutritionValue(
      totalNutrients: totalNutrients == freezed
          ? _value.totalNutrients
          : totalNutrients // ignore: cast_nullable_to_non_nullable
              as double?,
      totGNutrition: totGNutrition == freezed
          ? _value.totGNutrition
          : totGNutrition // ignore: cast_nullable_to_non_nullable
              as double?,
      totMNutrition: totMNutrition == freezed
          ? _value.totMNutrition
          : totMNutrition // ignore: cast_nullable_to_non_nullable
              as double?,
      totVNutrition: totVNutrition == freezed
          ? _value.totVNutrition
          : totVNutrition // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TotalNutritionValue implements _TotalNutritionValue {
  const _$_TotalNutritionValue(
      {this.totalNutrients,
      this.totGNutrition,
      this.totMNutrition,
      this.totVNutrition});

  factory _$_TotalNutritionValue.fromJson(Map<String, dynamic> json) =>
      _$_$_TotalNutritionValueFromJson(json);

  @override
  final double? totalNutrients;
  @override
  final double? totGNutrition;
  @override
  final double? totMNutrition;
  @override
  final double? totVNutrition;

  @override
  String toString() {
    return 'TotalNutritionValue(totalNutrients: $totalNutrients, totGNutrition: $totGNutrition, totMNutrition: $totMNutrition, totVNutrition: $totVNutrition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TotalNutritionValue &&
            (identical(other.totalNutrients, totalNutrients) ||
                const DeepCollectionEquality()
                    .equals(other.totalNutrients, totalNutrients)) &&
            (identical(other.totGNutrition, totGNutrition) ||
                const DeepCollectionEquality()
                    .equals(other.totGNutrition, totGNutrition)) &&
            (identical(other.totMNutrition, totMNutrition) ||
                const DeepCollectionEquality()
                    .equals(other.totMNutrition, totMNutrition)) &&
            (identical(other.totVNutrition, totVNutrition) ||
                const DeepCollectionEquality()
                    .equals(other.totVNutrition, totVNutrition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalNutrients) ^
      const DeepCollectionEquality().hash(totGNutrition) ^
      const DeepCollectionEquality().hash(totMNutrition) ^
      const DeepCollectionEquality().hash(totVNutrition);

  @JsonKey(ignore: true)
  @override
  _$TotalNutritionValueCopyWith<_TotalNutritionValue> get copyWith =>
      __$TotalNutritionValueCopyWithImpl<_TotalNutritionValue>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TotalNutritionValueToJson(this);
  }
}

abstract class _TotalNutritionValue implements TotalNutritionValue {
  const factory _TotalNutritionValue(
      {double? totalNutrients,
      double? totGNutrition,
      double? totMNutrition,
      double? totVNutrition}) = _$_TotalNutritionValue;

  factory _TotalNutritionValue.fromJson(Map<String, dynamic> json) =
      _$_TotalNutritionValue.fromJson;

  @override
  double? get totalNutrients => throw _privateConstructorUsedError;
  @override
  double? get totGNutrition => throw _privateConstructorUsedError;
  @override
  double? get totMNutrition => throw _privateConstructorUsedError;
  @override
  double? get totVNutrition => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TotalNutritionValueCopyWith<_TotalNutritionValue> get copyWith =>
      throw _privateConstructorUsedError;
}
