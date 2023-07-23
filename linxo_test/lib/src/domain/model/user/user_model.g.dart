// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<_$_UserModel> {
  @override
  final int typeId = 0;

  @override
  _$_UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserModel(
      email: fields[0] as String,
      name: fields[1] as UserNameModel,
      picture: fields[2] as UserPictureModel,
      login: fields[3] as UserLoginModel,
      phone: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.picture)
      ..writeByte(3)
      ..write(obj.login)
      ..writeByte(4)
      ..write(obj.phone);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserNameModelAdapter extends TypeAdapter<_$_UserNameModel> {
  @override
  final int typeId = 1;

  @override
  _$_UserNameModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserNameModel(
      title: fields[0] as String,
      first: fields[1] as String,
      last: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserNameModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.first)
      ..writeByte(2)
      ..write(obj.last);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserNameModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserPictureModelAdapter extends TypeAdapter<_$_UserPictureModel> {
  @override
  final int typeId = 2;

  @override
  _$_UserPictureModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserPictureModel(
      large: fields[0] as String,
      medium: fields[1] as String,
      thumbnail: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserPictureModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.large)
      ..writeByte(1)
      ..write(obj.medium)
      ..writeByte(2)
      ..write(obj.thumbnail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserPictureModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserLoginModelAdapter extends TypeAdapter<_$_UserLoginModel> {
  @override
  final int typeId = 3;

  @override
  _$_UserLoginModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserLoginModel(
      uuid: fields[0] as String,
      username: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserLoginModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.username);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserLoginModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      email: json['email'] as String,
      name: UserNameModel.fromJson(json['name'] as Map<String, dynamic>),
      picture:
          UserPictureModel.fromJson(json['picture'] as Map<String, dynamic>),
      login: UserLoginModel.fromJson(json['login'] as Map<String, dynamic>),
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'picture': instance.picture,
      'login': instance.login,
      'phone': instance.phone,
    };

_$_UserNameModel _$$_UserNameModelFromJson(Map<String, dynamic> json) =>
    _$_UserNameModel(
      title: json['title'] as String,
      first: json['first'] as String,
      last: json['last'] as String,
    );

Map<String, dynamic> _$$_UserNameModelToJson(_$_UserNameModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };

_$_UserPictureModel _$$_UserPictureModelFromJson(Map<String, dynamic> json) =>
    _$_UserPictureModel(
      large: json['large'] as String,
      medium: json['medium'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$_UserPictureModelToJson(_$_UserPictureModel instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };

_$_UserLoginModel _$$_UserLoginModelFromJson(Map<String, dynamic> json) =>
    _$_UserLoginModel(
      uuid: json['uuid'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_UserLoginModelToJson(_$_UserLoginModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'username': instance.username,
    };
