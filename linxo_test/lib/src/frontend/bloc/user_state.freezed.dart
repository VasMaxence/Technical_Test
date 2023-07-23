// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserListState _$UserListStateFromJson(Map<String, dynamic> json) {
  return _UserListState.fromJson(json);
}

/// @nodoc
mixin _$UserListState {
  UserStatus get status => throw _privateConstructorUsedError;
  List<UserModel> get users => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListStateCopyWith<UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res, UserListState>;
  @useResult
  $Res call({UserStatus status, List<UserModel> users, bool hasReachedMax});
}

/// @nodoc
class _$UserListStateCopyWithImpl<$Res, $Val extends UserListState>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserListStateCopyWith<$Res>
    implements $UserListStateCopyWith<$Res> {
  factory _$$_UserListStateCopyWith(
          _$_UserListState value, $Res Function(_$_UserListState) then) =
      __$$_UserListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserStatus status, List<UserModel> users, bool hasReachedMax});
}

/// @nodoc
class __$$_UserListStateCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res, _$_UserListState>
    implements _$$_UserListStateCopyWith<$Res> {
  __$$_UserListStateCopyWithImpl(
      _$_UserListState _value, $Res Function(_$_UserListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_UserListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserListState implements _UserListState {
  _$_UserListState(
      {required this.status,
      final List<UserModel> users = const [],
      this.hasReachedMax = false})
      : _users = users;

  factory _$_UserListState.fromJson(Map<String, dynamic> json) =>
      _$$_UserListStateFromJson(json);

  @override
  final UserStatus status;
  final List<UserModel> _users;
  @override
  @JsonKey()
  List<UserModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString() {
    return 'UserListState(status: $status, users: $users, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserListState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_users), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserListStateCopyWith<_$_UserListState> get copyWith =>
      __$$_UserListStateCopyWithImpl<_$_UserListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserListStateToJson(
      this,
    );
  }
}

abstract class _UserListState implements UserListState {
  factory _UserListState(
      {required final UserStatus status,
      final List<UserModel> users,
      final bool hasReachedMax}) = _$_UserListState;

  factory _UserListState.fromJson(Map<String, dynamic> json) =
      _$_UserListState.fromJson;

  @override
  UserStatus get status;
  @override
  List<UserModel> get users;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$_UserListStateCopyWith<_$_UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}
