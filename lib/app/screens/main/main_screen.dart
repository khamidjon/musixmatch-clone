import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:musixmatch_clone/app/screens/main/contribute/contribute_screen.dart';
import 'package:musixmatch_clone/app/screens/main/home/home_screen.dart';
import 'package:musixmatch_clone/app/screens/main/identify/identify_screen.dart';
import 'package:musixmatch_clone/app/screens/main/main_screen_wm.dart';
import 'package:musixmatch_clone/app/screens/main/play/play_screen.dart';
import 'package:musixmatch_clone/app/screens/main/search/search_screen.dart';
import 'package:musixmatch_clone/app/screens/main/widgets/bottom_navigation.dart';

class MainScreen extends ElementaryWidget<IMainScreenWM> {
  const MainScreen({
    super.key,
  }) : super(wmFactory);

  static const tag = 'main';

  @override
  Widget build(IMainScreenWM wm) {
    return Scaffold(
      body: PageView(
        controller: wm.pageController,
        children: const [
          HomeScreen(),
          PlayScreen(),
          ContributeScreen(),
          IdentifyScreen(),
          SearchScreen(),
        ],
      ),
      bottomNavigationBar: MusixmatchBottomNavigationBar(
        pageController: wm.pageController,
      ),
    );
  }
}
