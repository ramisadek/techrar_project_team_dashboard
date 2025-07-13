import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_response.freezed.dart';

@freezed
sealed class DioResponse with _$DioResponse {
  const DioResponse._();
  const factory DioResponse({
    required Response response,
    DioException? dioException,
    Exception? normalException,
    StackTrace? stackTrace,
  }) = _DioResponse;

  bool get isResponseEmpty => response == Response(requestOptions: RequestOptions());
  bool get isContainError => dioException != null || normalException != null;
  bool get isErrorNormal =>  normalException != null;
  bool get isErrorDioException => dioException != null;

  factory DioResponse.empty(){
    return DioResponse(
      response: Response(requestOptions: RequestOptions()),
    );
  }

}
