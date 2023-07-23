import 'package:flutter/material.dart';
import 'package:linxo_test/src/utils/resources/hive.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();

  runApp(const App());
}
