// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @HiveField(0)
  String get email => throw _privateConstructorUsedError;
  @HiveField(1)
  UserNameModel get name => throw _privateConstructorUsedError;
  @HiveField(2)
  UserPictureModel get picture => throw _privateConstructorUsedError;
  @HiveField(3)
  UserLoginModel get login => throw _privateConstructorUsedError;
  @HiveField(4)
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@HiveField(0) String email,
      @HiveField(1) UserNameModel name,
      @HiveField(2) UserPictureModel picture,
      @HiveField(3) UserLoginModel login,
      @HiveField(4) String phone});

  $UserNameModelCopyWith<$Res> get name;
  $UserPictureModelCopyWith<$Res> get picture;
  $UserLoginModelCopyWith<$Res> get login;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? picture = null,
    Object? login = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as UserNameModel,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as UserPictureModel,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as UserLoginModel,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserNameModelCopyWith<$Res> get name {
    return $UserNameModelCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserPictureModelCopyWith<$Res> get picture {
    return $UserPictureModelCopyWith<$Res>(_value.picture, (value) {
      return _then(_value.copyWith(picture: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLoginModelCopyWith<$Res> get login {
    return $UserLoginModelCopyWith<$Res>(_value.login, (value) {
      return _then(_value.copyWith(login: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String email,
      @HiveField(1) UserNameModel name,
      @HiveField(2) UserPictureModel picture,
      @HiveField(3) UserLoginModel login,
      @HiveField(4) String phone});

  @override
  $UserNameModelCopyWith<$Res> get name;
  @override
  $UserPictureModelCopyWith<$Res> get picture;
  @override
  $UserLoginModelCopyWith<$Res> get login;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? picture = null,
    Object? login = null,
    Object? phone = null,
  }) {
    return _then(_$_UserModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as UserNameModel,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as UserPictureModel,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as UserLoginModel,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_UserModel extends _UserModel {
  _$_UserModel(
      {@HiveField(0) required this.email,
      @HiveField(1) required this.name,
      @HiveField(2) required this.picture,
      @HiveField(3) required this.login,
      @HiveField(4) required this.phone})
      : super._();

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @HiveField(0)
  final String email;
  @override
  @HiveField(1)
  final UserNameModel name;
  @override
  @HiveField(2)
  final UserPictureModel picture;
  @override
  @HiveField(3)
  final UserLoginModel login;
  @override
  @HiveField(4)
  final String phone;

  @override
  String toString() {
    return 'UserModel(email: $email, name: $name, picture: $picture, login: $login, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, name, picture, login, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  factory _UserModel(
      {@HiveField(0) required final String email,
      @HiveField(1) required final UserNameModel name,
      @HiveField(2) required final UserPictureModel picture,
      @HiveField(3) required final UserLoginModel login,
      @HiveField(4) required final String phone}) = _$_UserModel;
  _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @HiveField(0)
  String get email;
  @override
  @HiveField(1)
  UserNameModel get name;
  @override
  @HiveField(2)
  UserPictureModel get picture;
  @override
  @HiveField(3)
  UserLoginModel get login;
  @override
  @HiveField(4)
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserNameModel _$UserNameModelFromJson(Map<String, dynamic> json) {
  return _UserNameModel.fromJson(json);
}

/// @nodoc
mixin _$UserNameModel {
  @HiveField(0)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  String get first => throw _privateConstructorUsedError;
  @HiveField(2)
  String get last => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNameModelCopyWith<UserNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameModelCopyWith<$Res> {
  factory $UserNameModelCopyWith(
          UserNameModel value, $Res Function(UserNameModel) then) =
      _$UserNameModelCopyWithImpl<$Res, UserNameModel>;
  @useResult
  $Res call(
      {@HiveField(0) String title,
      @HiveField(1) String first,
      @HiveField(2) String last});
}

/// @nodoc
class _$UserNameModelCopyWithImpl<$Res, $Val extends UserNameModel>
    implements $UserNameModelCopyWith<$Res> {
  _$UserNameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? first = null,
    Object? last = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserNameModelCopyWith<$Res>
    implements $UserNameModelCopyWith<$Res> {
  factory _$$_UserNameModelCopyWith(
          _$_UserNameModel value, $Res Function(_$_UserNameModel) then) =
      __$$_UserNameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String title,
      @HiveField(1) String first,
      @HiveField(2) String last});
}

/// @nodoc
class __$$_UserNameModelCopyWithImpl<$Res>
    extends _$UserNameModelCopyWithImpl<$Res, _$_UserNameModel>
    implements _$$_UserNameModelCopyWith<$Res> {
  __$$_UserNameModelCopyWithImpl(
      _$_UserNameModel _value, $Res Function(_$_UserNameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? first = null,
    Object? last = null,
  }) {
    return _then(_$_UserNameModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$_UserNameModel extends _UserNameModel {
  _$_UserNameModel(
      {@HiveField(0) required this.title,
      @HiveField(1) required this.first,
      @HiveField(2) required this.last})
      : super._();

  factory _$_UserNameModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserNameModelFromJson(json);

  @override
  @HiveField(0)
  final String title;
  @override
  @HiveField(1)
  final String first;
  @override
  @HiveField(2)
  final String last;

  @override
  String toString() {
    return 'UserNameModel(title: $title, first: $first, last: $last)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNameModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, first, last);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserNameModelCopyWith<_$_UserNameModel> get copyWith =>
      __$$_UserNameModelCopyWithImpl<_$_UserNameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserNameModelToJson(
      this,
    );
  }
}

abstract class _UserNameModel extends UserNameModel {
  factory _UserNameModel(
      {@HiveField(0) required final String title,
      @HiveField(1) required final String first,
      @HiveField(2) required final String last}) = _$_UserNameModel;
  _UserNameModel._() : super._();

  factory _UserNameModel.fromJson(Map<String, dynamic> json) =
      _$_UserNameModel.fromJson;

  @override
  @HiveField(0)
  String get title;
  @override
  @HiveField(1)
  String get first;
  @override
  @HiveField(2)
  String get last;
  @override
  @JsonKey(ignore: true)
  _$$_UserNameModelCopyWith<_$_UserNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPictureModel _$UserPictureModelFromJson(Map<String, dynamic> json) {
  return _UserPictureModel.fromJson(json);
}

/// @nodoc
mixin _$UserPictureModel {
  @HiveField(0)
  String get large => throw _privateConstructorUsedError;
  @HiveField(1)
  String get medium => throw _privateConstructorUsedError;
  @HiveField(2)
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPictureModelCopyWith<UserPictureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPictureModelCopyWith<$Res> {
  factory $UserPictureModelCopyWith(
          UserPictureModel value, $Res Function(UserPictureModel) then) =
      _$UserPictureModelCopyWithImpl<$Res, UserPictureModel>;
  @useResult
  $Res call(
      {@HiveField(0) String large,
      @HiveField(1) String medium,
      @HiveField(2) String thumbnail});
}

/// @nodoc
class _$UserPictureModelCopyWithImpl<$Res, $Val extends UserPictureModel>
    implements $UserPictureModelCopyWith<$Res> {
  _$UserPictureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = null,
    Object? medium = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPictureModelCopyWith<$Res>
    implements $UserPictureModelCopyWith<$Res> {
  factory _$$_UserPictureModelCopyWith(
          _$_UserPictureModel value, $Res Function(_$_UserPictureModel) then) =
      __$$_UserPictureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String large,
      @HiveField(1) String medium,
      @HiveField(2) String thumbnail});
}

/// @nodoc
class __$$_UserPictureModelCopyWithImpl<$Res>
    extends _$UserPictureModelCopyWithImpl<$Res, _$_UserPictureModel>
    implements _$$_UserPictureModelCopyWith<$Res> {
  __$$_UserPictureModelCopyWithImpl(
      _$_UserPictureModel _value, $Res Function(_$_UserPictureModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = null,
    Object? medium = null,
    Object? thumbnail = null,
  }) {
    return _then(_$_UserPictureModel(
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2)
class _$_UserPictureModel extends _UserPictureModel {
  _$_UserPictureModel(
      {@HiveField(0) required this.large,
      @HiveField(1) required this.medium,
      @HiveField(2) required this.thumbnail})
      : super._();

  factory _$_UserPictureModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserPictureModelFromJson(json);

  @override
  @HiveField(0)
  final String large;
  @override
  @HiveField(1)
  final String medium;
  @override
  @HiveField(2)
  final String thumbnail;

  @override
  String toString() {
    return 'UserPictureModel(large: $large, medium: $medium, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPictureModel &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, large, medium, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPictureModelCopyWith<_$_UserPictureModel> get copyWith =>
      __$$_UserPictureModelCopyWithImpl<_$_UserPictureModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPictureModelToJson(
      this,
    );
  }
}

abstract class _UserPictureModel extends UserPictureModel {
  factory _UserPictureModel(
      {@HiveField(0) required final String large,
      @HiveField(1) required final String medium,
      @HiveField(2) required final String thumbnail}) = _$_UserPictureModel;
  _UserPictureModel._() : super._();

  factory _UserPictureModel.fromJson(Map<String, dynamic> json) =
      _$_UserPictureModel.fromJson;

  @override
  @HiveField(0)
  String get large;
  @override
  @HiveField(1)
  String get medium;
  @override
  @HiveField(2)
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_UserPictureModelCopyWith<_$_UserPictureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLoginModel _$UserLoginModelFromJson(Map<String, dynamic> json) {
  return _UserLoginModel.fromJson(json);
}

/// @nodoc
mixin _$UserLoginModel {
  @HiveField(0)
  String get uuid => throw _privateConstructorUsedError;
  @HiveField(1)
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLoginModelCopyWith<UserLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginModelCopyWith<$Res> {
  factory $UserLoginModelCopyWith(
          UserLoginModel value, $Res Function(UserLoginModel) then) =
      _$UserLoginModelCopyWithImpl<$Res, UserLoginModel>;
  @useResult
  $Res call({@HiveField(0) String uuid, @HiveField(1) String username});
}

/// @nodoc
class _$UserLoginModelCopyWithImpl<$Res, $Val extends UserLoginModel>
    implements $UserLoginModelCopyWith<$Res> {
  _$UserLoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserLoginModelCopyWith<$Res>
    implements $UserLoginModelCopyWith<$Res> {
  factory _$$_UserLoginModelCopyWith(
          _$_UserLoginModel value, $Res Function(_$_UserLoginModel) then) =
      __$$_UserLoginModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String uuid, @HiveField(1) String username});
}

/// @nodoc
class __$$_UserLoginModelCopyWithImpl<$Res>
    extends _$UserLoginModelCopyWithImpl<$Res, _$_UserLoginModel>
    implements _$$_UserLoginModelCopyWith<$Res> {
  __$$_UserLoginModelCopyWithImpl(
      _$_UserLoginModel _value, $Res Function(_$_UserLoginModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
  }) {
    return _then(_$_UserLoginModel(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3)
class _$_UserLoginModel extends _UserLoginModel {
  _$_UserLoginModel(
      {@HiveField(0) required this.uuid, @HiveField(1) required this.username})
      : super._();

  factory _$_UserLoginModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserLoginModelFromJson(json);

  @override
  @HiveField(0)
  final String uuid;
  @override
  @HiveField(1)
  final String username;

  @override
  String toString() {
    return 'UserLoginModel(uuid: $uuid, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLoginModel &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLoginModelCopyWith<_$_UserLoginModel> get copyWith =>
      __$$_UserLoginModelCopyWithImpl<_$_UserLoginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserLoginModelToJson(
      this,
    );
  }
}

abstract class _UserLoginModel extends UserLoginModel {
  factory _UserLoginModel(
      {@HiveField(0) required final String uuid,
      @HiveField(1) required final String username}) = _$_UserLoginModel;
  _UserLoginModel._() : super._();

  factory _UserLoginModel.fromJson(Map<String, dynamic> json) =
      _$_UserLoginModel.fromJson;

  @override
  @HiveField(0)
  String get uuid;
  @override
  @HiveField(1)
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_UserLoginModelCopyWith<_$_UserLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}
