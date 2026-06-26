import 'package:dio/dio.dart';

class DioFactory {

  static Dio createDio() {

    return Dio(
      BaseOptions(
        baseUrl:
        "http://orbitvolunteers.atwebpages.com",

        // connectTimeout:
        // const Duration(seconds: 30),
        //
        // receiveTimeout:
        // const Duration(seconds: 30),
      ),
    );
  }
}