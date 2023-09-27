import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:musixmatch_clone/app/screens/main/main_screen.dart';
import 'package:musixmatch_clone/domain/elementary_models/main_elementary_model.dart';

abstract interface class IMainScreenWM implements IWidgetModel {
  abstract final PageController pageController;
}

class MainScreenWM extends WidgetModel<MainScreen, MainElementaryModel>
    implements IMainScreenWM {
  MainScreenWM(super.model);

  @override
  final PageController pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

MainScreenWM wmFactory(BuildContext context) =>
    MainScreenWM(MainElementaryModel());
