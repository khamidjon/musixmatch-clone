import 'package:musixmatch_clone/domain/entities/track_entity.dart';

abstract class TracksRepository {
  Future<List<TrackEntity>> getChartTracks(String country);
}
