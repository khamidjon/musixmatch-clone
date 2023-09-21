import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:musixmatch_clone/app/navigation/app_router.dart';
import 'package:musixmatch_localization/strings.g.dart';

class MusixmatchApp extends StatefulWidget {
  const MusixmatchApp({super.key});

  @override
  State<MusixmatchApp> createState() => _MusixmatchAppState();
}

class _MusixmatchAppState extends State<MusixmatchApp> {
  final _routerConfig = AppRouterConfig();

  @override
  void dispose() {
    _routerConfig.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _routerConfig.router,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
    );
  }
}
