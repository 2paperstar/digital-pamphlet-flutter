import 'package:digital_pamphlet/core/application/service/ticket_check_service.dart';
import 'package:digital_pamphlet/core/infrastructure/api/rest_client.dart';
import 'package:digital_pamphlet/core/infrastructure/value/exhibition.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: TicketCheckService)
class RestTicketCheckService implements TicketCheckService {
  final RestClient _client;
  final Logger _logger;

  RestTicketCheckService(this._client, this._logger);

  @override
  Future<Exhibition> getTicket(String uuid) async {
    try {
      final test = await _client.getTicket(uuid);
      return test.exhibition;
    } catch (e) {
      _logger.e('getTicket', e);
      rethrow;
    }
  }
}
