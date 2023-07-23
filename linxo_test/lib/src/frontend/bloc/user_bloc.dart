import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
// ignore_for_file: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:linxo_test/src/domain/model/user/user_model.dart';
import 'package:linxo_test/src/domain/repositories/user_repository.dart';
import 'package:linxo_test/src/frontend/bloc/user_state.dart';
import 'package:stream_transform/stream_transform.dart';

part 'user_event.dart';

// to avoid spamming the API unnecessarily.
const throttleDuration = Duration(milliseconds: 100);
EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  UserListBloc() : super(UserListState(status: UserStatus.initial)) {
    on<UserFetched>(_onUserFetched, transformer: throttleDroppable(throttleDuration));
    on<UserListCreated>(_onUserListCreated, transformer: throttleDroppable(throttleDuration));
  }

  Future<void> _onUserFetched(UserFetched event, Emitter<UserListState> emit) async {
    if (state.hasReachedMax) return;

    try {
      if (state.status == UserStatus.initial) {
        final users = await _fetchUsers();
        emit(state.copyWith(status: UserStatus.success, users: users, hasReachedMax: false));
        return;
      }

      final users = await _fetchUsers();
      emit(users.isEmpty
          ? state.copyWith(hasReachedMax: true)
          : state.copyWith(status: UserStatus.success, users: List.of(state.users)..addAll(users), hasReachedMax: false));
    } catch (_) {
      emit(state.copyWith(status: UserStatus.failure));
    }
  }

  Future<void> _onUserListCreated(UserListCreated event, Emitter<UserListState> emit) async {
    if (state.status != UserStatus.initial) return;

    try {
      final localUsers = await UserRepository.fetchUsersFromLocal();

      if (localUsers?.isNotEmpty ?? false) {
        emit(state.copyWith(status: UserStatus.success, users: localUsers!, hasReachedMax: false));
        return;
      }

      final users = await _fetchUsers(30, 0);

      emit(state.copyWith(status: UserStatus.success, users: users, hasReachedMax: false));
    } catch (_) {
      emit(state.copyWith(status: UserStatus.failure));
    }
  }

  Future<List<UserModel>> _fetchUsers([int numberOfItem = 10, int? page]) async {
    return await UserRepository.fetchUsers(page ?? super.state.users.length ~/ 10, numberOfItem);
  }
}
