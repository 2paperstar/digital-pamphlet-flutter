import 'package:digital_pamphlet/core/infrastructure/value/exhibition_map.dart';

abstract class FetchExhibitionMapService {
  Future<List<ExhibitionMap>> fetch(int id);
}
