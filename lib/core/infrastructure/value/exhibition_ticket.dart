import 'package:digital_pamphlet/core/infrastructure/value/exhibition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exhibition_ticket.freezed.dart';
part 'exhibition_ticket.g.dart';

@freezed
class ExhibitionTicket with _$ExhibitionTicket {
  const factory ExhibitionTicket({
    required String uuid,
    required String name,
    required String description,
    required int price,
    required Exhibition exhibition,
  }) = _ExhibitionTicket;

  factory ExhibitionTicket.fromJson(Map<String, dynamic> json) =>
      _$ExhibitionTicketFromJson(json);
}
