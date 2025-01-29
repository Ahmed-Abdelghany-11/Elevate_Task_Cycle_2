import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio provideDio() {
    Dio dio = Dio();

    dio.options.connectTimeout = const Duration(seconds: 60);
    dio.options.receiveTimeout = const Duration(seconds: 60);
    dio.interceptors.add(GetIt.I<LogInterceptor>());


    return Dio();
  }

  @lazySingleton
  LogInterceptor providePrettyDioLogger() {
    return LogInterceptor(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      request: true,
      logPrint: print,
    );
  }
}

