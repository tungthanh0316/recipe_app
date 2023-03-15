// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Recipe List`
  String get recipe_list_title {
    return Intl.message(
      'Recipe List',
      name: 'recipe_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Get recipes`
  String get get_recipe {
    return Intl.message(
      'Get recipes',
      name: 'get_recipe',
      desc: '',
      args: [],
    );
  }

  /// `We have some problems with connection, Tap to try again!`
  String get get_recipe_error {
    return Intl.message(
      'We have some problems with connection, Tap to try again!',
      name: 'get_recipe_error',
      desc: '',
      args: [],
    );
  }

  /// `Name:`
  String get name {
    return Intl.message(
      'Name:',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Proteins:`
  String get proteins {
    return Intl.message(
      'Proteins:',
      name: 'proteins',
      desc: '',
      args: [],
    );
  }

  /// `Fats:`
  String get fats {
    return Intl.message(
      'Fats:',
      name: 'fats',
      desc: '',
      args: [],
    );
  }

  /// `Difficulty:`
  String get difficulty {
    return Intl.message(
      'Difficulty:',
      name: 'difficulty',
      desc: '',
      args: [],
    );
  }

  /// `Description:`
  String get description {
    return Intl.message(
      'Description:',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Carbos:`
  String get carbos {
    return Intl.message(
      'Carbos:',
      name: 'carbos',
      desc: '',
      args: [],
    );
  }

  /// `Calories:`
  String get calories {
    return Intl.message(
      'Calories:',
      name: 'calories',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
