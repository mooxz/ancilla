import 'package:dio/dio.dart';
import 'package:flutterapp/service/config.dart';


class HttpRequest {
  /// global base request option
  static final BaseOptions baseOptions = BaseOptions(baseUrl: HttpConfig.BASE_URL, connectTimeout: HttpConfig.TIMEOUT);
  static final dio = new Dio(baseOptions);

  static Future<T> request<T>(String url, {String method = 'get', Map<String, dynamic> params, Interceptor inter}) async {
    /// local request option
    final options = Options(method: method);

    /// global interceptor
    Interceptor globalInter = InterceptorsWrapper(
      onRequest: (options) {
//        print('全局请求拦截');
        return options;
      },
      onResponse: (response) {
//        print('全局响应拦截');
        return response;
      },
      onError: (error) {
        return error;
      }
    );
    List<Interceptor> inters = [globalInter];

    /// check if local interceptor is not null
    /// add to interceptor list
    if (inter != null) {
      inters.add(inter);
    }
    dio.interceptors.addAll(inters);

    try {
      Response response = await dio.request(url, queryParameters: params, options: options);
      return response.data;
    } on DioError catch(e) {
      return Future.error(e);
    }
  }
}