import 'package:flutter/material.dart';
import 'package:paygah1/screens/restaurants_screen.dart';
import 'package:paygah1/screens/welcome_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// new line
void main() {
  runApp(
    const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      home: WelcomeScreen()
    ),
  );
}
