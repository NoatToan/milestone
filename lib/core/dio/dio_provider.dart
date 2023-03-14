import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioProvider {
  static Dio? _instance;

  static get prettyDioLogger => PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: false,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90);

  static initDio() {
    _instance = Dio();
  }

  static Dio get tokenClient {
    _addInterceptors();

    return _instance!;
  }

  static Dio get dioWithHeaderToken {
    if (_instance == null) {
      initDio();
    }
    _addInterceptors();

    return _instance!;
  }

  static _addInterceptors() {
    // _instance ??= httpDio;
    // _instance!.interceptors.clear();
    // _instance!.interceptors.add(RequestHeaderInterceptor());
    _instance!.interceptors.add(prettyDioLogger);
  }
}
