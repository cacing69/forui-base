import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:forui_base/core/errors/failure.dart';

Failure errorWrapper(Exception e) {
  String? errorMessage;

  debugPrint(e.toString());

  if (e is DioException) {
    if (e.type == DioExceptionType.unknown) {
      if (e.message != null &&
          e.message!.toLowerCase().startsWith("formatexception")) {
        errorMessage = e.message;
      }
    } else {
      if (e.response != null && e.response!.data != null) {
        // Coba cek apakah data adalah Map<String, dynamic>
        if (e.response!.data is Map<String, dynamic>) {
          final responseMap = e.response!.data as Map<String, dynamic>;
          errorMessage = responseMap['message'] as String?;
        } else if (e.response!.data is String) {
          // Jika data adalah String langsung
          errorMessage = e.response!.data as String;
        } else {
          errorMessage = 'Server returned unexpected error format.';
        }
      } else {
        // Tidak ada respons atau data respons null
        errorMessage = 'Network error or no response data.';
      }

      return ServerFailure(
        message: errorMessage ?? 'An unknown server error occurred',
        data: e.response?.data,
      );
    }
  }

  return ServerFailure(
    message: 'An unexpected error wrapper occurred: ${e.toString()}',
  );
}
