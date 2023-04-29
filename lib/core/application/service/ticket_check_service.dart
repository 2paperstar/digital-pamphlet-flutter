import 'package:digital_pamphlet/core/infrastructure/value/exhibition.dart';

abstract class TicketCheckService {
  Future<Exhibition> getTicket(String uuid);
}
