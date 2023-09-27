import 'package:equatable/equatable.dart';

class TrackEntity with EquatableMixin {
  const TrackEntity({
    required this.id,
    required this.name,
    required this.rating,
    required this.commontrackId,
    required this.albumId,
    required this.albumName,
    required this.artistId,
    required this.artistName,
    required this.albumImage,
  });

  final int id;
  final String name;
  final int rating;
  final int commontrackId;
  final int albumId;
  final String albumName;
  final int artistId;
  final String artistName;
  final String albumImage;

  @override
  List<Object?> get props => [
        id,
        name,
        rating,
        commontrackId,
        albumId,
        albumName,
        artistId,
        artistName,
      ];
}

