import 'package:dio/dio.dart';
import 'package:linxo_test/src/domain/model/user_response/user_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'random_user_api.g.dart';

@RestApi(baseUrl: 'https://randomuser.me/api/')
abstract class RestRandomUserApi {
  factory RestRandomUserApi(Dio dio, {String baseUrl}) = _RestRandomUserApi;

  @GET("?page{page}&results={number}")
  Future<UserModelResponse> getUsers(@Path() String page, @Path() String number);
}
