import 'package:flutter/material.dart';
import 'package:musixmatch_localization/strings.g.dart';

class MusixmatchBottomNavigationBar extends StatefulWidget {
  const MusixmatchBottomNavigationBar({
    required this.pageController,
    super.key,
  });

  final PageController pageController;

  @override
  State<MusixmatchBottomNavigationBar> createState() =>
      MusixmatchBottomNavigationBarState();
}

class MusixmatchBottomNavigationBarState
    extends State<MusixmatchBottomNavigationBar> {
  var _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentPageIndex,
      onTap: (index) {
        widget.pageController.jumpToPage(index);
        setState(() {
          _currentPageIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: context.t.main.tabs.home,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.headphones),
          label: context.t.main.tabs.play,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.add_circle_outline),
          label: context.t.main.tabs.contribute,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.gps_fixed),
          label: context.t.main.tabs.identify,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.search),
          label: context.t.main.tabs.search,
        ),
      ],
    );
  }
}
