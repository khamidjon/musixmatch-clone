import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:musixmatch_clone/data/remote/responses/track_response.dart';
import 'package:retrofit/retrofit.dart';

part 'tracks_api.g.dart';

@Singleton()
@RestApi()
abstract class TracksApi {
  @factoryMethod
  factory TracksApi(Dio dio) = _TracksApi;

  @GET('track.get')
  Future<TrackResponse> getTrack();

  @GET('chart.tracks.get')
  Future<dynamic> getChartTracks({
    @Query('country') required String country,
  });
}
