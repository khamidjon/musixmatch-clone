import 'dart:math';

import 'package:musixmatch_clone/app/resource/dummy_images.dart';
import 'package:musixmatch_clone/data/remote/responses/track_response.dart';
import 'package:musixmatch_clone/domain/entities/track_entity.dart';

extension TrackResponseToEntity on TrackResponse {
  TrackEntity toEntity() => TrackEntity(
        id: trackId,
        name: trackName,
        rating: trackRating,
        commontrackId: commontrackId,
        albumId: albumId,
        albumName: albumName,
        artistId: artistId,
        artistName: artistName,
        albumImage:
            DummyImages.albums[Random().nextInt(DummyImages.albums.length)],
      );
}
