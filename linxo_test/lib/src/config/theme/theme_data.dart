import 'package:flutter/material.dart';
import 'package:linxo_test/src/config/theme/color.dart';

abstract class CustomTheme {
  static ThemeData get light => ThemeData(
        scaffoldBackgroundColor: AppColor.scaffoldBackground,
        useMaterial3: true,
      );
}
