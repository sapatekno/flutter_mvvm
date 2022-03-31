import 'package:dio/dio.dart';
import 'package:dio_log/dio_log.dart';
import 'package:talker/talker.dart';

class ReqresNetClient {
  Dio init() {
    Dio _dio = Dio();
    _dio.options.baseUrl = "https://reqres.in/api";
    _dio.interceptors.add(ApiInterceptors());
    _dio.interceptors.add(DioLogInterceptor());
    return _dio;
  }
}

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    Talker.instance.info('${options.baseUrl}${options.path}');
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
    Talker.instance.error(err.message);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    Talker.instance.info(response.data.toString());
  }
}
