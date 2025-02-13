// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get flag => throw _privateConstructorUsedError;
  String? get shortName => throw _privateConstructorUsedError;
  int? get phoneNumberLength => throw _privateConstructorUsedError;
  List<StateModel>? get states => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call(
      {String? name,
      String? code,
      String? flag,
      String? shortName,
      int? phoneNumberLength,
      List<StateModel>? states});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? flag = freezed,
    Object? shortName = freezed,
    Object? phoneNumberLength = freezed,
    Object? states = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberLength: freezed == phoneNumberLength
          ? _value.phoneNumberLength
          : phoneNumberLength // ignore: cast_nullable_to_non_nullable
              as int?,
      states: freezed == states
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as List<StateModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryModelImplCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$CountryModelImplCopyWith(
          _$CountryModelImpl value, $Res Function(_$CountryModelImpl) then) =
      __$$CountryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? code,
      String? flag,
      String? shortName,
      int? phoneNumberLength,
      List<StateModel>? states});
}

/// @nodoc
class __$$CountryModelImplCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$CountryModelImpl>
    implements _$$CountryModelImplCopyWith<$Res> {
  __$$CountryModelImplCopyWithImpl(
      _$CountryModelImpl _value, $Res Function(_$CountryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? flag = freezed,
    Object? shortName = freezed,
    Object? phoneNumberLength = freezed,
    Object? states = freezed,
  }) {
    return _then(_$CountryModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberLength: freezed == phoneNumberLength
          ? _value.phoneNumberLength
          : phoneNumberLength // ignore: cast_nullable_to_non_nullable
              as int?,
      states: freezed == states
          ? _value._states
          : states // ignore: cast_nullable_to_non_nullable
              as List<StateModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryModelImpl implements _CountryModel {
  const _$CountryModelImpl(
      {this.name,
      this.code,
      this.flag,
      this.shortName,
      this.phoneNumberLength,
      final List<StateModel>? states})
      : _states = states;

  factory _$CountryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? flag;
  @override
  final String? shortName;
  @override
  final int? phoneNumberLength;
  final List<StateModel>? _states;
  @override
  List<StateModel>? get states {
    final value = _states;
    if (value == null) return null;
    if (_states is EqualUnmodifiableListView) return _states;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CountryModel(name: $name, code: $code, flag: $flag, shortName: $shortName, phoneNumberLength: $phoneNumberLength, states: $states)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.phoneNumberLength, phoneNumberLength) ||
                other.phoneNumberLength == phoneNumberLength) &&
            const DeepCollectionEquality().equals(other._states, _states));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, flag, shortName,
      phoneNumberLength, const DeepCollectionEquality().hash(_states));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      __$$CountryModelImplCopyWithImpl<_$CountryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryModelImplToJson(
      this,
    );
  }
}

abstract class _CountryModel implements CountryModel {
  const factory _CountryModel(
      {final String? name,
      final String? code,
      final String? flag,
      final String? shortName,
      final int? phoneNumberLength,
      final List<StateModel>? states}) = _$CountryModelImpl;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$CountryModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get flag;
  @override
  String? get shortName;
  @override
  int? get phoneNumberLength;
  @override
  List<StateModel>? get states;
  @override
  @JsonKey(ignore: true)
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StateModel _$StateModelFromJson(Map<String, dynamic> json) {
  return _StateModel.fromJson(json);
}

/// @nodoc
mixin _$StateModel {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateModelCopyWith<StateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateModelCopyWith<$Res> {
  factory $StateModelCopyWith(
          StateModel value, $Res Function(StateModel) then) =
      _$StateModelCopyWithImpl<$Res, StateModel>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$StateModelCopyWithImpl<$Res, $Val extends StateModel>
    implements $StateModelCopyWith<$Res> {
  _$StateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateModelImplCopyWith<$Res>
    implements $StateModelCopyWith<$Res> {
  factory _$$StateModelImplCopyWith(
          _$StateModelImpl value, $Res Function(_$StateModelImpl) then) =
      __$$StateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$StateModelImplCopyWithImpl<$Res>
    extends _$StateModelCopyWithImpl<$Res, _$StateModelImpl>
    implements _$$StateModelImplCopyWith<$Res> {
  __$$StateModelImplCopyWithImpl(
      _$StateModelImpl _value, $Res Function(_$StateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$StateModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StateModelImpl implements _StateModel {
  const _$StateModelImpl({this.name});

  factory _$StateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StateModelImplFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'StateModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateModelImplCopyWith<_$StateModelImpl> get copyWith =>
      __$$StateModelImplCopyWithImpl<_$StateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StateModelImplToJson(
      this,
    );
  }
}

abstract class _StateModel implements StateModel {
  const factory _StateModel({final String? name}) = _$StateModelImpl;

  factory _StateModel.fromJson(Map<String, dynamic> json) =
      _$StateModelImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$StateModelImplCopyWith<_$StateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) {
  return _LanguageModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageModel {
  int? get id => throw _privateConstructorUsedError;
  int? get languageId => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get countryShortCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageModelCopyWith<LanguageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageModelCopyWith<$Res> {
  factory $LanguageModelCopyWith(
          LanguageModel value, $Res Function(LanguageModel) then) =
      _$LanguageModelCopyWithImpl<$Res, LanguageModel>;
  @useResult
  $Res call(
      {int? id, int? languageId, String? language, String? countryShortCode});
}

/// @nodoc
class _$LanguageModelCopyWithImpl<$Res, $Val extends LanguageModel>
    implements $LanguageModelCopyWith<$Res> {
  _$LanguageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? languageId = freezed,
    Object? language = freezed,
    Object? countryShortCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      countryShortCode: freezed == countryShortCode
          ? _value.countryShortCode
          : countryShortCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageModelImplCopyWith<$Res>
    implements $LanguageModelCopyWith<$Res> {
  factory _$$LanguageModelImplCopyWith(
          _$LanguageModelImpl value, $Res Function(_$LanguageModelImpl) then) =
      __$$LanguageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, int? languageId, String? language, String? countryShortCode});
}

/// @nodoc
class __$$LanguageModelImplCopyWithImpl<$Res>
    extends _$LanguageModelCopyWithImpl<$Res, _$LanguageModelImpl>
    implements _$$LanguageModelImplCopyWith<$Res> {
  __$$LanguageModelImplCopyWithImpl(
      _$LanguageModelImpl _value, $Res Function(_$LanguageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? languageId = freezed,
    Object? language = freezed,
    Object? countryShortCode = freezed,
  }) {
    return _then(_$LanguageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      countryShortCode: freezed == countryShortCode
          ? _value.countryShortCode
          : countryShortCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageModelImpl implements _LanguageModel {
  const _$LanguageModelImpl(
      {this.id, this.languageId, this.language, this.countryShortCode});

  factory _$LanguageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? languageId;
  @override
  final String? language;
  @override
  final String? countryShortCode;

  @override
  String toString() {
    return 'LanguageModel(id: $id, languageId: $languageId, language: $language, countryShortCode: $countryShortCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.languageId, languageId) ||
                other.languageId == languageId) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.countryShortCode, countryShortCode) ||
                other.countryShortCode == countryShortCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, languageId, language, countryShortCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageModelImplCopyWith<_$LanguageModelImpl> get copyWith =>
      __$$LanguageModelImplCopyWithImpl<_$LanguageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageModelImplToJson(
      this,
    );
  }
}

abstract class _LanguageModel implements LanguageModel {
  const factory _LanguageModel(
      {final int? id,
      final int? languageId,
      final String? language,
      final String? countryShortCode}) = _$LanguageModelImpl;

  factory _LanguageModel.fromJson(Map<String, dynamic> json) =
      _$LanguageModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get languageId;
  @override
  String? get language;
  @override
  String? get countryShortCode;
  @override
  @JsonKey(ignore: true)
  _$$LanguageModelImplCopyWith<_$LanguageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
