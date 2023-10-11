import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:musixmatch_clone/app/screens/helper/helper_wm.dart';
import 'package:musixmatch_clone/app/screens/main/home/home_screen.dart';
import 'package:musixmatch_clone/core/di/inject.dart';
import 'package:musixmatch_clone/domain/elementary_models/home_elementary_model.dart';
import 'package:musixmatch_clone/domain/entities/track_entity.dart';

abstract class IHomeScreenWM
    with IHelperWidgetModelMixin
    implements IWidgetModel {
  abstract final ValueNotifier<List<TrackEntity>> tracks;
}

class HomeScreenWM extends WidgetModel<HomeScreen, HomeElementaryModel>
    with HelperWidgetModelMixin
    implements IHomeScreenWM {
  HomeScreenWM(super.model);

  @override
  final ValueNotifier<List<TrackEntity>> tracks = ValueNotifier([]);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _fetchUzChartTracks();
  }

  void _fetchUzChartTracks() async {
    final result = await model.getUzChartTracks();
    tracks.value = result;
  }

  @override
  void dispose() {
    tracks.dispose();
    super.dispose();
  }
}

HomeScreenWM wmFactory(BuildContext context) => HomeScreenWM(
      HomeElementaryModel(
        inject(),
      ),
    );
