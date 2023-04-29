import 'package:digital_pamphlet/core/infrastructure/value/exhibition_ticket.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'http://localorder.link:5000')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/exhibition/ticket')
  Future<ExhibitionTicket> getTicket(@Query('uuid') String uuid);
}
