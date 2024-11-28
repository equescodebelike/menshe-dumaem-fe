import 'package:admin/data/repository/table_repository.dart';
import 'package:admin/data/service/ngrok_interceptor.dart';
import 'package:admin/data/service/table_service.dart';
import 'package:admin/utils/error_handler.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

const timeout = Duration(seconds: 30);

class AppComponents {
  static final AppComponents _instance = AppComponents._internal();

  factory AppComponents() => _instance;

  AppComponents._internal();

  final Dio dio = Dio();

  //errorHandler
  ErrorHandler errorHandler = DefaultErrorHandler();
  late final SharedPreferences sharedPreferences;

  late final TableService _tableService = TableService(dio);

  late final TableRepository tableRepository = TableRepository(_tableService);

  Future<void> init() async {
    dio.options
      ..baseUrl = 'https://1d2f-81-9-127-67.ngrok-free.app'
      ..contentType = Headers.jsonContentType
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
      ),
    );

    // dio.interceptors.add(
    //   NgrokInterceptor(),
    // );

    // await tokenRepository.initTokens();
    sharedPreferences = await SharedPreferences.getInstance();

    // dio.interceptors.add(
    //   JWTInterceptor(
    //     repository: tokenRepository,
    //     dio: dio,
    //   ),
    // );
  }

  Future<void> dispose() async {}
}
