import 'package:digital_pamphlet/core/infrastructure/value/exhibition_ticket.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'http://localorder.link:3000')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/exhibitions/0/tickets/{uuid}')
  Future<ExhibitionTicket> getTicket(@Path('uuid') String uuid);
}
