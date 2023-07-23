import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linxo_test/src/frontend/bloc/user_bloc.dart';
import 'package:linxo_test/src/frontend/view/home/user_list_page.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: BlocProvider(
          create: (context) => UserListBloc()..add(UserListCreated()),
          child: const UserListPage(),
        ),
      ),
    );
  }
}
