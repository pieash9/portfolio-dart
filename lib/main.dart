import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/home_page.dart';
import 'package:portfolio/style/app_theme.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      supportedLocales: const [Locale('en'), Locale('fa')],
      locale: const Locale("en"),
      home: const HomePage(),
    );
  }
}
