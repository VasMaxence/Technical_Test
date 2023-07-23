import 'package:flutter/material.dart';
import 'package:linxo_test/src/config/theme/theme_data.dart';
import 'package:linxo_test/src/frontend/view/home.dart';
import 'package:linxo_test/src/utils/extension/widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.light,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    ).darkRegion();
  }
}
