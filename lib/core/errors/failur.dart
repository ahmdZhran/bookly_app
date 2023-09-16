import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Time out with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send Time out with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('recieved Time out with api server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('your request was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('Your connection has an error ');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet ');
        }

        return ServerFailure('Unexpected Error trt later');
      default:
        return ServerFailure('Oops there was an error  , please try again');
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your reques not foutd , try again later!');
    } else {
      return ServerFailure('Oops there was an error  , please try again');
    }
  }
}
