import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:recipe_app/app_route.dart';
import 'package:recipe_app/presentation/screen/recipe/recipe_list_screen.dart';

import 'common/injector/config/app_config.dart';
import 'generated/l10n.dart';

void main()async {
  await AppConfig().configApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      initialRoute: RecipeListScreen.routePath,
      routes: AppRoute.getRoute(),
    );
  }
}