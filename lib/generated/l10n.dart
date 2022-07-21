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

  /// `Hello World`
  String get helloWorld {
    return Intl.message(
      'Hello World',
      name: 'helloWorld',
      desc: '',
      args: [],
    );
  }

  /// `Minigolf Toolbox`
  String get appName {
    return Intl.message(
      'Minigolf Toolbox',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Scorecard`
  String get titleScorecard {
    return Intl.message(
      'Scorecard',
      name: 'titleScorecard',
      desc: '',
      args: [],
    );
  }

  /// `Scorecard`
  String get btnMainScreenScorecard {
    return Intl.message(
      'Scorecard',
      name: 'btnMainScreenScorecard',
      desc: '',
      args: [],
    );
  }

  /// `How to play lanes`
  String get btnMainScreenLanes {
    return Intl.message(
      'How to play lanes',
      name: 'btnMainScreenLanes',
      desc: '',
      args: [],
    );
  }

  /// `Minigolf Toolbox`
  String get drawerHeaderName {
    return Intl.message(
      'Minigolf Toolbox',
      name: 'drawerHeaderName',
      desc: '',
      args: [],
    );
  }

  /// `Scorecard`
  String get drawerMenuItem1Name {
    return Intl.message(
      'Scorecard',
      name: 'drawerMenuItem1Name',
      desc: '',
      args: [],
    );
  }

  /// `How to play lanes`
  String get drawerMenuItem2Name {
    return Intl.message(
      'How to play lanes',
      name: 'drawerMenuItem2Name',
      desc: '',
      args: [],
    );
  }

  /// `pyramids:looping:sloped circle with kidney:double waves:flat loop:bridge:jump with net:straight lane with target window:pipe:sticks:labyrinth:truncated cones:double wedges:passages:middle hill:volcano:"V"-obstacle:angle:lightning:straight lane without obstacles:sloped circle without obstacles:plateau:wedge with target window:sloped lane without obstacles:sloped circle with "V"-obstacle`
  String get laneNames {
    return Intl.message(
      'pyramids:looping:sloped circle with kidney:double waves:flat loop:bridge:jump with net:straight lane with target window:pipe:sticks:labyrinth:truncated cones:double wedges:passages:middle hill:volcano:"V"-obstacle:angle:lightning:straight lane without obstacles:sloped circle without obstacles:plateau:wedge with target window:sloped lane without obstacles:sloped circle with "V"-obstacle',
      name: 'laneNames',
      desc: 'Names of all official lanes, ordered as in official rules',
      args: [],
    );
  }

  /// `Total`
  String get generalTotal {
    return Intl.message(
      'Total',
      name: 'generalTotal',
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
      Locale.fromSubtags(languageCode: 'cs'),
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
