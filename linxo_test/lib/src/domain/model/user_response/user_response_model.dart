import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linxo_test/src/domain/model/user/user_model.dart';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@freezed
class UserModelResponse with _$UserModelResponse {
  factory UserModelResponse({
    final List<UserModel>? results,
  }) = _UserModelResponse;

  factory UserModelResponse.fromJson(Map<String, dynamic> json) => _$UserModelResponseFromJson(json);
}
