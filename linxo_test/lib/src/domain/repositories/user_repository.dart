import 'package:dio/dio.dart';
import 'package:linxo_test/src/data/datasources/local/local_user.dart';
import 'package:linxo_test/src/data/datasources/remote/random_user_api.dart';
import 'package:linxo_test/src/domain/model/user/user_model.dart';
import 'package:linxo_test/src/utils/resources/misc.dart';

abstract class UserRepository {
  static Future<List<UserModel>> fetchUsers([int initialPage = 0, int numberItems = 10]) async {
    try {
      final local = LocalUserApi();

      final dio = Dio();

      final result = await RestRandomUserApi(dio).getUsers(initialPage.toString(), numberItems.toString());

      if (result.results == null) {
        throw Exception('No results');
      }

      /// Save in local cache
      await local.addUserList(result.results!);

      return result.results!;
    } catch (e) {
      printExcept(e);
      return [];
    }
  }

  static Future<List<UserModel>?> fetchUsersFromLocal() async {
    try {
      final local = LocalUserApi();

      /// Fetch from local cache
      final users = await local.getUsers();

      if (users.isNotEmpty) {
        return users;
      }

      return null;
    } catch (e) {
      printExcept(e);
      return null;
    }
  }
}
