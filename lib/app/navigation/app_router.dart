import 'package:go_router/go_router.dart';
import 'package:musixmatch_clone/app/screens/main/main_screen.dart';
import 'package:musixmatch_clone/app/screens/splash/splash_screen.dart';

class AppRouterConfig {
  late final GoRouter router = GoRouter(
    routes: _routes,
    initialLocation: '/',
  );

  void dispose() {}

  late final _routes = <RouteBase>[
    GoRoute(
      path: '/',
      name: SplashScreen.tag,
      builder: (_, __) => const SplashScreen(),
    ),
    GoRoute(
      path: '/main',
      name: MainScreen.tag,
      builder: (_, __) => const MainScreen(),
    ),
  ];
}
