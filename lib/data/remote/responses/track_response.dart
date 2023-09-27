import 'package:json_annotation/json_annotation.dart';

part 'track_response.g.dart';

@JsonSerializable()
class TrackResponse {
  const TrackResponse({
    required this.trackId,
    required this.trackName,
    required this.trackRating,
    required this.commontrackId,
    required this.albumId,
    required this.albumName,
    required this.artistId,
    required this.artistName,
  });

  final int trackId;
  final String trackName;
  final int trackRating;
  final int commontrackId;
  final int albumId;
  final String albumName;
  final int artistId;
  final String artistName;

  factory TrackResponse.fromJson(Map<String, dynamic> json) =>
      _$TrackResponseFromJson(json);
}

//{
//     "message": {
//         "header": {
//             "status_code": 200,
//             "execute_time": 0.071908950805664
//         },
//         "body": {
//             "track": {
//                 "track_id": 84584600,
//                 "track_name": "Alejandro",
//                 "track_name_translation_list": [],
//                 "track_rating": 82,
//                 "commontrack_id": 5920049,
//                 "instrumental": 0,
//                 "explicit": 0,
//                 "has_lyrics": 1,
//                 "has_subtitles": 1,
//                 "has_richsync": 1,
//                 "num_favourite": 7445,
//                 "album_id": 20915188,
//                 "album_name": "The Fame Monster (UK Deluxe)",
//                 "artist_id": 378462,
//                 "artist_name": "Lady Gaga",
//                 "track_share_url": "https://www.musixmatch.com/lyrics/Lady-Gaga/Alejandro?utm_source=application&utm_campaign=api&utm_medium=",
//                 "track_edit_url": "https://www.musixmatch.com/lyrics/Lady-Gaga/Alejandro/edit?utm_source=application&utm_campaign=api&utm_medium=",
//                 "restricted": 0,
//                 "updated_time": "2022-06-13T19:09:02Z",
//                 "primary_genres": {
//                     "music_genre_list": [
//                         {
//                             "music_genre": {
//                                 "music_genre_id": 7,
//                                 "music_genre_parent_id": 34,
//                                 "music_genre_name": "Electronic",
//                                 "music_genre_name_extended": "Electronic",
//                                 "music_genre_vanity": "Electronic"
//                             }
//                         },
//                         {
//                             "music_genre": {
//                                 "music_genre_id": 14,
//                                 "music_genre_parent_id": 34,
//                                 "music_genre_name": "Pop",
//                                 "music_genre_name_extended": "Pop",
//                                 "music_genre_vanity": "Pop"
//                             }
//                         },
//                         {
//                             "music_genre": {
//                                 "music_genre_id": 17,
//                                 "music_genre_parent_id": 34,
//                                 "music_genre_name": "Dance",
//                                 "music_genre_name_extended": "Dance",
//                                 "music_genre_vanity": "Dance"
//                             }
//                         },
//                         {
//                             "music_genre": {
//                                 "music_genre_id": 1205,
//                                 "music_genre_parent_id": 19,
//                                 "music_genre_name": "Europe",
//                                 "music_genre_name_extended": "World / Europe",
//                                 "music_genre_vanity": "World-Europe"
//                             }
//                         }
//                     ]
//                 }
//             }
//         }
//     }
// }
