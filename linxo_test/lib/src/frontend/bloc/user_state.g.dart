// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserListState _$$_UserListStateFromJson(Map<String, dynamic> json) => _$_UserListState(
      status: $enumDecode(_$UserStatusEnumMap, json['status']),
      users: (json['users'] as List<dynamic>?)?.map((e) => UserModel.fromJson(e as Map<String, dynamic>)).toList() ?? const [],
      hasReachedMax: json['hasReachedMax'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserListStateToJson(_$_UserListState instance) => <String, dynamic>{
      'status': _$UserStatusEnumMap[instance.status]!,
      'users': instance.users,
      'hasReachedMax': instance.hasReachedMax,
    };

const _$UserStatusEnumMap = {
  UserStatus.initial: 'initial',
  UserStatus.success: 'success',
  UserStatus.failure: 'failure',
};
