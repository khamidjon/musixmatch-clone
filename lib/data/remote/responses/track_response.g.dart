// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackResponse _$TrackResponseFromJson(Map<String, dynamic> json) =>
    TrackResponse(
      trackId: json['track_id'] as int,
      trackName: json['track_name'] as String,
      trackRating: json['track_rating'] as int,
      commontrackId: json['commontrack_id'] as int,
      albumId: json['album_id'] as int,
      albumName: json['album_name'] as String,
      artistId: json['artist_id'] as int,
      artistName: json['artist_name'] as String,
    );

Map<String, dynamic> _$TrackResponseToJson(TrackResponse instance) =>
    <String, dynamic>{
      'track_id': instance.trackId,
      'track_name': instance.trackName,
      'track_rating': instance.trackRating,
      'commontrack_id': instance.commontrackId,
      'album_id': instance.albumId,
      'album_name': instance.albumName,
      'artist_id': instance.artistId,
      'artist_name': instance.artistName,
    };
