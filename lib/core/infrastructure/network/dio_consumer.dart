import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:task_manager_app/core/config/app_constant_strings.dart';
import 'package:task_manager_app/core/di/index.dart';
import 'package:task_manager_app/core/error_handling/index.dart';
import 'package:task_manager_app/core/infrastructure/network/api_consumer.dart';
import 'package:task_manager_app/core/infrastructure/network/app_interceptor.dart';
import 'package:task_manager_app/core/infrastructure/network/status_code.dart';
import 'package:task_manager_app/core/utils/app_logger.dart';

@LazySingleton(as: ApiConsumer)
class DioConsumer implements ApiConsumer {
  final Dio client;

  DioConsumer({required this.client}) {
client.options.baseUrl='${dotenv.get(AppConstantStrings.baseUrl)}';
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
          maxWidth: 90,
        ),
      );
    }
  }

  @override
  Future<dynamic> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      client.options.headers = headers;
      final response = await client.get<dynamic>(path, queryParameters: queryParameters);
      return handleResponseAsJson(response);
    } on DioException catch (error) {
      AppLogger().error('Error in GET request: $error');
      throw DioHandlerExc.handle(error);
    }
  }

  @override
  Future<dynamic> post({
    required String path,
    Map<String, dynamic>? queryParameters,
    Object? body,
    Map<String, String>? headers,
  }) async {
    try {
      client.options.headers = headers;
      final response =
      await client.post<dynamic>(path, queryParameters: queryParameters, data: body);
      return handleResponseAsJson(response);
    } on DioException catch (error) {
      AppLogger().error('Error in POST request: $error');
      throw DioHandlerExc.handle(error);
    }
  }

  @override
  Future<dynamic> put({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    try {
      client.options.headers = headers;
      final response =
      await client.put<dynamic>(path, queryParameters: queryParameters, data: body);
      return handleResponseAsJson(response);
    } on DioException catch (error) {
      AppLogger().error('Error in PUT request: $error');
      throw DioHandlerExc.handle(error);
    }
  }

  @override
  Future<dynamic> delete({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    try {
      client.options.headers = headers;
      final response = await client.delete<dynamic>(
          path, queryParameters: queryParameters, data: body);
      return handleResponseAsJson(response);
    } on DioException catch (error) {
      AppLogger().error('Error in DELETE request: $error');
      throw DioHandlerExc.handle(error);
    }
  }
}

dynamic handleResponseAsJson(Response<dynamic> response) {
  if (response.data is String) {
    return jsonDecode(response.data.toString());
  } else {
    return response.data as Map<String, dynamic>;
  }
}

class DioHandlerExc implements Exception {
  final Failure failure;

  DioHandlerExc.handle(dynamic error) : failure = _handleError(error);

  static Failure _handleError(dynamic error) {
    if (error is DioException) {
      return _handleDioError(error);
    } else if (error is DioHandlerExc) {
      // Ensure nested DioHandlerExc error messages are not lost
      return error.failure;
    } else {
      return ServerFailure("Something went wrong");
    }
  }

  static Failure _handleDioError(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Connection timeout");
      case DioExceptionType.badResponse:
        final statusCode = exception.response?.statusCode;
        final message = exception.response?.data['message'] as String? ?? 'Unknown error';
        AppLogger().error('Error message: $message');
        switch (statusCode) {
          case StatusCode.badRequest:
            return ServerFailure(message);
          case StatusCode.unauthorized:
            return ServerFailure('Unauthorized');
          case StatusCode.forbidden:
            return ServerFailure('Forbidden');
          case StatusCode.notFound:
            return ServerFailure('Not Found');
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
