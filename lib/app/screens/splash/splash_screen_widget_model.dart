import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:musixmatch_clone/app/screens/main/main_screen.dart';
import 'package:musixmatch_clone/app/screens/splash/splash_screen.dart';
import 'package:musixmatch_clone/domain/models/splash_model.dart';

abstract interface class ISplashScreenWidgetModel implements IWidgetModel {}

class SplashScreenWidgetModel extends WidgetModel<SplashScreen, SplashModel>
    implements ISplashScreenWidgetModel {
  SplashScreenWidgetModel(super.model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(seconds: 2));
      if (context.mounted) {
        context.goNamed(MainScreen.tag);
      }
    });
  }
}

SplashScreenWidgetModel wmFactory(BuildContext context) =>
    SplashScreenWidgetModel(SplashModel());
