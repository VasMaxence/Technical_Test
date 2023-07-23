import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linxo_test/src/domain/model/user/user_model.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

enum UserStatus { initial, success, failure }

@freezed
class UserListState with _$UserListState {
  factory UserListState({
    required final UserStatus status,
    @Default([]) final List<UserModel> users,
    @Default(false) final bool hasReachedMax,
  }) = _UserListState;

  factory UserListState.fromJson(Map<String, dynamic> json) => _$UserListStateFromJson(json);
}
