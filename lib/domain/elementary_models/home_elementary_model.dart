import 'package:elementary/elementary.dart';
import 'package:musixmatch_clone/domain/entities/track_entity.dart';
import 'package:musixmatch_clone/domain/repositories/tracks_repository.dart';

class HomeElementaryModel extends ElementaryModel {
  HomeElementaryModel(this._tracksRepository);

  final TracksRepository _tracksRepository;

  Future<List<TrackEntity>> getUzChartTracks() async {
    try {
      return await _tracksRepository.getChartTracks('uz');
    } on Object catch (_) {
      return [];
    }
  }
}
