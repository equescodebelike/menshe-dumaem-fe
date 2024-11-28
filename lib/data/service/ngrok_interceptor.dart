import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NgrokInterceptor extends Interceptor {
  NgrokInterceptor();
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['ngrok-skip-browser-warning'] = 'skip-browser-warning';
    return super.onRequest(options, handler);
  }
}
