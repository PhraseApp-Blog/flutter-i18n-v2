import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Heroes of Computer Science';

  @override
  String get openSettings => 'Open Settings';

  @override
  String heroCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count heroes',
      one: '1 hero',
      zero: 'No heroes yet',
    );
    return '$_temp0';
  }

  @override
  String heroBorn(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMMMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Born $dateString';
  }

  @override
  String get hopperName => 'Grace Hopper';

  @override
  String get hopperBio => 'Devised theory of machine-independent programming languages.';

  @override
  String get turingName => 'Alan Turing';

  @override
  String get turingBio => 'Father of theoretical computer science & artificial intelligence.';

  @override
  String get liskovName => 'Barbara Liskov';

  @override
  String get liskovBio => 'Turing Award winner; inventor of Liskov substitution principle.';

  @override
  String get wozniakName => 'Steve Wozniak';

  @override
  String wozniakBio(Object appleOne, Object appleTwo) {
    return 'Developed the $appleOne & $appleTwo microcomputers.';
  }

  @override
  String get bernersLeeName => 'Tim Berners-Lee';

  @override
  String get bernersLeeBio => 'Inventor of the World Wide Web.';

  @override
  String get gatesName => 'Bill Gates';

  @override
  String gatesBio(Object microsoft) {
    return 'Co-founder of $microsoft; philanthropist.';
  }

  @override
  String get settings => 'Settings';

  @override
  String get settingsScreen => 'Settings Screen';

  @override
  String itemTotal(double value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      
    );
    final String valueString = valueNumberFormat.format(value);

    return 'Your total is: $valueString';
  }
}
