part of 'user_bloc.dart';

abstract class UserListEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class UserFetched  extends UserListEvent {}

class UserListCreated  extends UserListEvent {}