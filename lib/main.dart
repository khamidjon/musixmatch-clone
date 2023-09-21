import 'package:flutter/material.dart';
import 'package:musixmatch_clone/app/musixmatch_app.dart';
import 'package:musixmatch_clone/core/di/di_container.dart';
import 'package:musixmatch_localization/strings.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDi();
  runApp(
    TranslationProvider(
      child: const MusixmatchApp(),
    ),
  );
}
