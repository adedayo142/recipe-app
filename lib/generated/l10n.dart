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
  String get hello_world {
    return Intl.message(
      'Hello World',
      name: 'hello_world',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Quality Free Delivery`
  String get onboarding_title_one {
    return Intl.message(
      'Quality Free Delivery',
      name: 'onboarding_title_one',
      desc: '',
      args: [],
    );
  }

  /// `Kally Dish offers non-perishable foodstuff at the lowest wholesale price delivered to your doorstep for free`
  String get onboarding_subtitle_one {
    return Intl.message(
      'Kally Dish offers non-perishable foodstuff at the lowest wholesale price delivered to your doorstep for free',
      name: 'onboarding_subtitle_one',
      desc: '',
      args: [],
    );
  }

  /// `Seamless Order`
  String get onboarding_title_two {
    return Intl.message(
      'Seamless Order',
      name: 'onboarding_title_two',
      desc: '',
      args: [],
    );
  }

  /// `With Kally Dish you can place your order from the comfort of your home by calling any of our hotlines`
  String get onboarding_subtitle_two {
    return Intl.message(
      'With Kally Dish you can place your order from the comfort of your home by calling any of our hotlines',
      name: 'onboarding_subtitle_two',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe To Our Store`
  String get onboarding_title_three {
    return Intl.message(
      'Subscribe To Our Store',
      name: 'onboarding_title_three',
      desc: '',
      args: [],
    );
  }

  /// `Kally Dish provides exclusive access to cost-cutting, time saving and stress-reducing benefits through it's membership plan`
  String get onboarding_subtitle_three {
    return Intl.message(
      'Kally Dish provides exclusive access to cost-cutting, time saving and stress-reducing benefits through it\'s membership plan',
      name: 'onboarding_subtitle_three',
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
