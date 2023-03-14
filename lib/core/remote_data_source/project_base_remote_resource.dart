import 'package:dio/dio.dart';
import 'package:milestone_project/core/dio/dio_provider.dart';

abstract class ProjectBaseRemoteResource {
  Dio get dio => DioProvider.dioWithHeaderToken;

  final String uriFood = 'https://api.edamam.com/api/food-database/v2';
}
