import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
     String? name,
     String? code,
     String? flag,
     String? shortName,
     int? phoneNumberLength,
     List<StateModel>? states,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);
}

@freezed
class StateModel with _$StateModel {
  const factory StateModel({
     String? name,
  }) = _StateModel;

  factory StateModel.fromJson(Map<String, dynamic> json) => _$StateModelFromJson(json);
}
