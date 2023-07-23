import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel extends HiveObject with _$UserModel {
  UserModel._();

  @HiveType(typeId: 0)
  factory UserModel({
    @HiveField(0) required String email,
    @HiveField(1) required UserNameModel name,
    @HiveField(2) required UserPictureModel picture,
    @HiveField(3) required UserLoginModel login,
    @HiveField(4) required String phone,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  static List<UserModel> fromApiMap(Map<String, dynamic> data) {
    final ret = <UserModel>[];

    if (data["results"] != null) {
      data["results"].forEach((v) {
        ret.add(UserModel.fromJson(v));
      });
    }

    return ret;
  }

}

@freezed
class UserNameModel extends HiveObject with _$UserNameModel {
  UserNameModel._();

  @HiveType(typeId: 1)
  factory UserNameModel({
    @HiveField(0) required String title,
    @HiveField(1) required String first,
    @HiveField(2) required String last,
  }) = _UserNameModel;

  factory UserNameModel.fromJson(Map<String, dynamic> json) => _$UserNameModelFromJson(json);

}

@freezed
class UserPictureModel extends HiveObject with _$UserPictureModel {
  UserPictureModel._();

  @HiveType(typeId: 2)
  factory UserPictureModel({
    @HiveField(0) required String large,
    @HiveField(1) required String medium,
    @HiveField(2) required String thumbnail,
  }) = _UserPictureModel;

  factory UserPictureModel.fromJson(Map<String, dynamic> json) => _$UserPictureModelFromJson(json);
}

@freezed
class UserLoginModel extends HiveObject with _$UserLoginModel {
  UserLoginModel._();

  @HiveType(typeId: 3)
  factory UserLoginModel({
    @HiveField(0) required String uuid,
    @HiveField(1) required String username,
  }) = _UserLoginModel;

  factory UserLoginModel.fromJson(Map<String, dynamic> json) => _$UserLoginModelFromJson(json);
}
