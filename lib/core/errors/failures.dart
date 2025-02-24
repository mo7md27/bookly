import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailuer extends Failure {
  ServerFailuer(super.errMessage);

  factory ServerFailuer.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer('Conniction timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailuer('Sind timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailuer('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailuer('Internal Server Error');

      case DioExceptionType.badResponse:
        return ServerFailuer.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailuer('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailuer('Connection Error');

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailuer('No Internet Connection');
        }
        return ServerFailuer('Unexpected Error, Please try later!');
    }
  }

  factory ServerFailuer.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailuer(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailuer('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailuer('Inrternal Server error, Please try later');
    } else {
      return ServerFailuer('Opps There was an Error, PLease try again');
    }
  }
}
