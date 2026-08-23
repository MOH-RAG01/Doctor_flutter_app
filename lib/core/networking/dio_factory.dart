import 'package:dio/dio.dart';
import 'package:doctor/core/helpers/constants.dart';
import 'package:doctor/core/helpers/shared_pref_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;
  static Dio createDio() {
    final Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addHeaders() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      'authorization':
          'Bearer ${await SharedPrefHelper.getStringData(SharedPrefKeys.userToken)}',
    };
  }

  static void updateHeaders(String token) async {
    dio?.options.headers = {'authorization': 'Bearer $token'};
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
