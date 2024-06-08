import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:task_manager_app/core/di/index.dart';
import 'package:task_manager_app/core/error_handling/index.dart';
import 'package:task_manager_app/core/infrastructure/network/api_consumer.dart';
import 'package:task_manager_app/core/infrastructure/network/app_interceptor.dart';
import 'package:task_manager_app/core/infrastructure/network/status_code.dart';

@LazySingleton(as: ApiConsumer)
class DioConsumer implements ApiConsumer {
  final Dio client;

  DioConsumer({required this.client}) {
    client.options
      ..followRedirects = false
      ..receiveDataWhenStatusError = true
      ..responseType = ResponseType.json;
    // ..validateStatus = (status) => status! < StatusCode.internalServerError;
    client.interceptors.add(di<AppInterceptors>());
    if (kDebugMode) {
      client.interceptors.add(
        PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90),
      );
    }
  }

  @override
  Future<dynamic> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    // try {
    client.options.headers = headers;
    final response = await client.get(path, queryParameters: queryParameters);
    return handelResponseAsJson(response);
    // } on DioException catch (error) {
    //   handleDioError(error);
    // }
  }

  @override
  Future<dynamic> post({
    required String path,
    Map<String, dynamic>? queryParameters,
    Object? body,
    Map<String, String>? headers,
  }) async {
    client.options.headers = headers;
    final response =
        await client.post(path, queryParameters: queryParameters, data: body);
    return handelResponseAsJson(response);
  }

  @override
  Future<dynamic> put({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    // try {
    client.options.headers = headers;

    final response =
        await client.put(path, queryParameters: queryParameters, data: body);
    return handelResponseAsJson(response);
    // } on DioException catch (error) {
    //   handleDioError(error);
    // }
  }

  @override
  Future<dynamic> delete({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    client.options.headers = headers;

    final response =
        await client.delete(path, queryParameters: queryParameters, data: body);
    return handelResponseAsJson(response);
  }
}

dynamic handelResponseAsJson(Response<dynamic> response) {
  if (response.data is String) {
    // Parse the JSON string into a map
    return jsonDecode(response.data.toString());
  } else {
    // If it's already a map, just return it
    return response.data as Map<String, dynamic>;
  }
}

class DioHandlerExc implements Exception{
  final Failure failure;

  DioHandlerExc.handle(dynamic error) : failure = _handleError(error);

  static Failure _handleError(dynamic error) {
    if (error is DioException) {
      return _handleDioError(error);
    } else {
      return ServerFailure("Something went wrong");
    }
  }

  static Failure _handleDioError(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.badResponse:
        final statusCode = exception.response?.statusCode;
        switch (statusCode) {
          case StatusCode.badRequest:
            return ServerFailure(exception.response?.data['message'] as String);
          case StatusCode.unauthorized:
          case StatusCode.forbidden:
          case StatusCode.notFound:
          case StatusCode.internalServerError:
            return ServerFailure('Internal Server Error');
          default:
            return ServerFailure('Unknown Error');
        }
      case DioExceptionType.cancel:
        return ServerFailure('Request was cancelled');
      case DioExceptionType.unknown:
      case DioExceptionType.badCertificate:
      case DioExceptionType.connectionError:
      default:
        return ServerFailure('Unknown Error');
    }
  }
}
