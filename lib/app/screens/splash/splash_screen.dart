import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:musixmatch_clone/app/resource/assets.dart';
import 'package:musixmatch_clone/app/screens/splash/splash_screen_widget_model.dart';

class SplashScreen extends ElementaryWidget<ISplashScreenWidgetModel> {
  const SplashScreen({super.key}) : super(wmFactory);

  static const tag = '/splash';

  @override
  Widget build(ISplashScreenWidgetModel wm) {
    return Scaffold(
      body: Center(
        child: SizedBox.square(
          dimension: 100,
          child: Image.asset(AppImages.logo),
        ),
      ),
    );
  }
}
