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

  /// `payment`
  String get payment {
    return Intl.message(
      'payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `invoice Details`
  String get invoiceDetails {
    return Intl.message(
      'invoice Details',
      name: 'invoiceDetails',
      desc: '',
      args: [],
    );
  }

  /// `general Consultation`
  String get generalTypeOfConsultation {
    return Intl.message(
      'general Consultation',
      name: 'generalTypeOfConsultation',
      desc: '',
      args: [],
    );
  }

  /// `consultation Subtype`
  String get consultationSubtype {
    return Intl.message(
      'consultation Subtype',
      name: 'consultationSubtype',
      desc: '',
      args: [],
    );
  }

  /// `wallet Balance`
  String get walletBalance {
    return Intl.message(
      'wallet Balance',
      name: 'walletBalance',
      desc: '',
      args: [],
    );
  }

  /// `electronic Payment Card`
  String get electronicPaymentCard {
    return Intl.message(
      'electronic Payment Card',
      name: 'electronicPaymentCard',
      desc: '',
      args: [],
    );
  }

  /// `electronic Wallet`
  String get electronicWallet {
    return Intl.message(
      'electronic Wallet',
      name: 'electronicWallet',
      desc: '',
      args: [],
    );
  }

  /// `confirm Payment`
  String get confirmPayment {
    return Intl.message(
      'confirm Payment',
      name: 'confirmPayment',
      desc: '',
      args: [],
    );
  }

  /// `Consulting`
  String get Consulting {
    return Intl.message(
      'Consulting',
      name: 'Consulting',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
