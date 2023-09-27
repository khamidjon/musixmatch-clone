import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:musixmatch_clone/app/musixmatch_app.dart';
import 'package:musixmatch_clone/core/di/di_container.dart';
import 'package:musixmatch_localization/strings.g.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await initDi();
  runApp(
    TranslationProvider(
      child: const MusixmatchApp(),
    ),
  );
}
