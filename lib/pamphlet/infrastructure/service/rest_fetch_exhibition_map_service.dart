import 'package:digital_pamphlet/core/infrastructure/api/rest_client.dart';
import 'package:digital_pamphlet/core/infrastructure/value/exhibition_map.dart';
import 'package:digital_pamphlet/pamphlet/application/service/fetch_exhibition_map_service.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: FetchExhibitionMapService)
class RestFetchExhibitionMapService implements FetchExhibitionMapService {
  final RestClient _client;
  final Logger _logger;

  RestFetchExhibitionMapService(this._client, this._logger);
  @override
  Future<List<ExhibitionMap>> fetch(int id) async {
    try {
      final maps = await _client.getExhibitionMaps(id);
      return maps;
    } catch (e) {
      _logger.e('failed to fetch exhibition maps', e);
      rethrow;
    }
  }
}
