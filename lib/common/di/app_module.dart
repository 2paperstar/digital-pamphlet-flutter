import 'package:digital_pamphlet/common/di/get_it.dart';
import 'package:digital_pamphlet/core/infrastructure/api/rest_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class AppModule {
  @lazySingleton
  Logger get logger => Logger();

  @lazySingleton
  Dio get dio => Dio()
    ..options.contentType = Headers.jsonContentType
    ..interceptors.addAll([]);

  @lazySingleton
  RestClient get restClient => RestClient(getIt<Dio>());
}
