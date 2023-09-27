import 'package:injectable/injectable.dart';
import 'package:musixmatch_clone/data/mappers/track_mapper.dart';
import 'package:musixmatch_clone/data/remote/responses/track_response.dart';
import 'package:musixmatch_clone/data/remote/tracks_api.dart';
import 'package:musixmatch_clone/domain/entities/track_entity.dart';
import 'package:musixmatch_clone/domain/repositories/tracks_repository.dart';

@Singleton(as: TracksRepository)
class TracksRepositoryImpl implements TracksRepository {
  const TracksRepositoryImpl(this._tracksApi);

  final TracksApi _tracksApi;

  @override
  Future<List<TrackEntity>> getChartTracks(String country) async {
    final result = await _tracksApi.getChartTracks(country: country);
    final list = result['track_list'];
    final tracks = <TrackEntity>[];
    for (final itemResponse in list) {
      final itemEntity = (TrackResponse.fromJson(itemResponse['track'])).toEntity();
      tracks.add(itemEntity);
    }
    return tracks;
  }
}
