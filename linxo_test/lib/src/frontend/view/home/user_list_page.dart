import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linxo_test/src/frontend/bloc/user_bloc.dart';
import 'package:linxo_test/src/frontend/bloc/user_state.dart';
import 'package:linxo_test/src/frontend/widgets/user_card.dart';
import 'package:linxo_test/src/utils/extension/widget.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  late final ScrollController _scrollController = ScrollController()..addListener(_onScroll);

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<UserListBloc>().add(UserFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserListBloc, UserListState>(
      builder: (context, state) {
        switch (state.status) {
          case UserStatus.failure:
            return Container();

          case UserStatus.success:
            return ListView.builder(
              controller: _scrollController,
              itemCount: state.hasReachedMax ? state.users.length : state.users.length + 1,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                if (index >= state.users.length) {
                  return const Center(child: CircularProgressIndicator());
                }

                final user = state.users[index];

                return UserCard(user: user);
              },
            );

          default:
            return const CircularProgressIndicator().center();
        }
      },
    );
  }
}
