import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:musixmatch_clone/app/resource/typography.dart';
import 'package:musixmatch_clone/app/screens/main/home/home_screen_wm.dart';
import 'package:musixmatch_clone/domain/entities/track_entity.dart';

class HomeScreen extends ElementaryWidget<IHomeScreenWM> {
  const HomeScreen({super.key}) : super(wmFactory);

  @override
  Widget build(IHomeScreenWM wm) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      wm.tr.home.top50,
                      style: AppTypography.title,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_circle_right_sharp),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            ValueListenableBuilder<List<TrackEntity>>(
              valueListenable: wm.tracks,
              builder: (context, tracks, child) {
                if (tracks.isEmpty) {
                  return const SizedBox.shrink();
                }
                return SizedBox(
                  height: 180,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: tracks.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 16.0),
                    itemBuilder: (_, index) {
                      final track = tracks[index];
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (index == 0) const SizedBox(width: 16.0),
                          TrackItem(
                            track: track,
                          ),
                          if (index == tracks.length - 1)
                            const SizedBox(width: 16.0),
                        ],
                      );
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class TrackItem extends StatelessWidget {
  const TrackItem({
    required this.track,
    super.key,
  });

  final TrackEntity track;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox.square(
            dimension: 100,
            child: Image.network(track.albumImage),
          ),
          const SizedBox(height: 4.0),
          Text(
            track.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4.0),
          Text(track.rating.toString())
        ],
      ),
    );
  }
}
