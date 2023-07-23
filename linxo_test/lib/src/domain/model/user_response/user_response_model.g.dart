// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModelResponse _$$_UserModelResponseFromJson(Map<String, dynamic> json) =>
    _$_UserModelResponse(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserModelResponseToJson(
        _$_UserModelResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
