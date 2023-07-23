import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:linxo_test/src/domain/model/user/user_model.dart';
import 'package:path_provider/path_provider.dart';

void initHiveAdapter() {
  Hive.registerAdapter(UserModelAdapter());
  Hive.registerAdapter(UserNameModelAdapter());
  Hive.registerAdapter(UserPictureModelAdapter());
  Hive.registerAdapter(UserLoginModelAdapter());
}

void disposeHive() {
  Hive.close();
}

Future<void> initHive() async {
  final appDocumentDir = await getApplicationDocumentsDirectory();
  final hiveFile = File('${appDocumentDir.path}/users.hive');

  if (!hiveFile.existsSync()) {
    await hiveFile.create(recursive: true);
  }

  Hive.initFlutter(appDocumentDir.path);

  initHiveAdapter();

  await Hive.openBox('users', path: appDocumentDir.path);
  // Hive.box("users").clear();
}
