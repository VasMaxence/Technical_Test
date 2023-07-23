import 'package:hive/hive.dart';
import 'package:linxo_test/src/domain/model/user/user_model.dart';

class LocalUserApi {
  final database = Hive.box('users');

  LocalUserApi();

  Future<void> saveUsers(List<UserModel> users) async {
    await database.addAll(users);
  }

  Future<void> addUserList(List<UserModel> users) async {
    // Check if user already exists
    final existingUsers = await getUsers();

    for (final user in users) {
      if (existingUsers.contains(user)) {
        continue;
      }
      await database.add(user);
    }
  }

  Future<void> deleteUser(UserModel user) async {
    await database.delete(user.email);
  }

  Future<void> deleteAllUsers() async {
    await database.clear();
  }

  Future<List<UserModel>> getUsers() async {
    return database.values.map((e) => e as UserModel).toList();
  }
}
