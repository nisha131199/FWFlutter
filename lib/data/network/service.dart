import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../utils/Util.dart';
import '../responses/api_response.dart';

const String baseURL = "https://jsonplaceholder.typicode.com/";

class Service {
  static Dio? _dio;

  /// worked as retrofit in android kotlin
  /// can identify either the response is 401 {unauthorised}; can directly move to Login screen; (if any)
  /// add condition onResponse line no. 53
  ///  if (response.data["code"] == 401) {
  ///             clearData();
  ///             const LoginScreen().navigate(isInfinity: true);
  ///           }

  Dio getDio({String baseurl = ''}) {
    if (_dio == null) {
      BaseOptions options = BaseOptions(
          baseUrl: baseurl.isEmpty ? baseURL : baseurl, connectTimeout: 30000, receiveTimeout: 30000);
      return Dio(options)
        ..interceptors.add(LogInterceptor())
        ..interceptors.add(
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseBody: true,
              responseHeader: true,
              compact: false,
            ))
        ..interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
          return handler.next(options); //continue
        }, onResponse: (response, handler) async {
          debugPrint("response::::$response");
          return handler.next(response); // continue
        }, onError: (DioError e, handler) async {
          debugPrint("error response::::${e.response}");
          debugPrint("error message::::${e.message}");

          return handler.next(e);
        }));
    } else {
      return _dio!;
    }
  }

  ///await -> wait and lock the further execution till got any response from the server

  Future<ApiResponse> getProducts(
      String endPoint, {
        Map<String, dynamic>? headers,
        Map<String, dynamic>? queryParameters,
        String baseurl = '',
      }) async {
    bool value = await checkInternetConnection();
    if (value) {
      try {
        var response = await getDio(
          baseurl: baseurl,
        ).get(
          endPoint,
          queryParameters: queryParameters,
          options: Options(
            headers: headers,
            contentType: "application/json",
          ),
        );
        return ApiResponse(response.statusCode == 200, response.statusMessage!, response);
      } catch (error) {
        return exception(error);
      }
    } else {
      debugPrint("Internet not connected");
      return ApiResponse(false, "Check your internet connection and Please try again later.", null);
    }
  }

  exception(error) {
    try {
      return ApiResponse(false, "${error?.response?.data['message'] ?? "Sorry! Something went wrong."}", null);
    } catch (e) {
      if (DioErrorType.other == error.type ||
          DioErrorType.receiveTimeout == error.type ||
          DioErrorType.connectTimeout == error.type) {
        if (error.message.contains('SocketException')) {
          return ApiResponse(false, "Check your internet connection and Please try again later.", null);
        } else if (error.message.contains("Connecting timed out [30000ms]")) {
          return ApiResponse(false, "Please check your internet connection", null);
        } else {
          return ApiResponse(false, "Sorry! Something went wrong.", null);
        }
      } else {
        return ApiResponse(false, "Sorry! Something went wrong.", null);
      }
    }
  }
}