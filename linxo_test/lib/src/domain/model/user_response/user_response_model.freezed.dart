// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModelResponse _$UserModelResponseFromJson(Map<String, dynamic> json) {
  return _UserModelResponse.fromJson(json);
}

/// @nodoc
mixin _$UserModelResponse {
  List<UserModel>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelResponseCopyWith<UserModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelResponseCopyWith<$Res> {
  factory $UserModelResponseCopyWith(
          UserModelResponse value, $Res Function(UserModelResponse) then) =
      _$UserModelResponseCopyWithImpl<$Res, UserModelResponse>;
  @useResult
  $Res call({List<UserModel>? results});
}

/// @nodoc
class _$UserModelResponseCopyWithImpl<$Res, $Val extends UserModelResponse>
    implements $UserModelResponseCopyWith<$Res> {
  _$UserModelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelResponseCopyWith<$Res>
    implements $UserModelResponseCopyWith<$Res> {
  factory _$$_UserModelResponseCopyWith(_$_UserModelResponse value,
          $Res Function(_$_UserModelResponse) then) =
      __$$_UserModelResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserModel>? results});
}

/// @nodoc
class __$$_UserModelResponseCopyWithImpl<$Res>
    extends _$UserModelResponseCopyWithImpl<$Res, _$_UserModelResponse>
    implements _$$_UserModelResponseCopyWith<$Res> {
  __$$_UserModelResponseCopyWithImpl(
      _$_UserModelResponse _value, $Res Function(_$_UserModelResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_UserModelResponse(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModelResponse implements _UserModelResponse {
  _$_UserModelResponse({final List<UserModel>? results}) : _results = results;

  factory _$_UserModelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelResponseFromJson(json);

  final List<UserModel>? _results;
  @override
  List<UserModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserModelResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModelResponse &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelResponseCopyWith<_$_UserModelResponse> get copyWith =>
      __$$_UserModelResponseCopyWithImpl<_$_UserModelResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelResponseToJson(
      this,
    );
  }
}

abstract class _UserModelResponse implements UserModelResponse {
  factory _UserModelResponse({final List<UserModel>? results}) =
      _$_UserModelResponse;

  factory _UserModelResponse.fromJson(Map<String, dynamic> json) =
      _$_UserModelResponse.fromJson;

  @override
  List<UserModel>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelResponseCopyWith<_$_UserModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
