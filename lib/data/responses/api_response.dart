import 'package:dio/dio.dart';

class ApiResponse {
  final bool status;
  final String message;
  final Response? response;

  ApiResponse(this.status, this.message, this.response);
}