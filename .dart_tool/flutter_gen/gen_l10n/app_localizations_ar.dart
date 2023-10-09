import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'أبطال علوم الكمبيوتر';

  @override
  String get openSettings => 'إفتح الإعدادات';

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

    return 'تاريخ الميلاد $dateString';
  }

  @override
  String get hopperName => 'جريس هوبر';

  @override
  String get hopperBio => 'إبتكرت نظرية للغات البرمجة المستقلة عن الجهاز.';

  @override
  String get turingName => 'آلان تورينج';

  @override
  String get turingBio => 'الأب الروحي لعلوم الكمبيوتر النظرية والذكاء الاصطناعي.';

  @override
  String get liskovName => 'باربرا ليسكوف';

  @override
  String get liskovBio => 'الفائزة بجائزة تورينج، مخترعة مبدأ استبدال ليسكوف.';

  @override
  String get wozniakName => 'ستيف وزنياك';

  @override
  String wozniakBio(Object appleOne, Object appleTwo) {
    return 'طور جهازي كمبيوتر $appleOne و $appleTwo';
  }

  @override
  String get bernersLeeName => 'تيم برنرز - لي';

  @override
  String get bernersLeeBio => 'مخترع شبكة الويب العالمية.';

  @override
  String get gatesName => 'بيل جيتس';

  @override
  String gatesBio(Object microsoft) {
    return 'المؤسس المشارك لشركة $microsoft ، محب الخير.';
  }

  @override
  String get settings => 'الإعدادات';

  @override
  String get settingsScreen => 'شاشة الإعدادات';

  @override
  String itemTotal(double value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      
    );
    final String valueString = valueNumberFormat.format(value);

    return 'إجمالي: $valueString';
  }
}
