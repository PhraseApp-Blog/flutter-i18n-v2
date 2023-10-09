import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Heroes of Computer Science'**
  String get appTitle;

  /// No description provided for @openSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get openSettings;

  /// No description provided for @heroCount.
  ///
  /// In en, this message translates to:
  /// **'{count,plural, =0{No heroes yet} =1{1 hero} other{{count} heroes}}'**
  String heroCount(num count);

  /// No description provided for @heroBorn.
  ///
  /// In en, this message translates to:
  /// **'Born {date}'**
  String heroBorn(DateTime date);

  /// No description provided for @hopperName.
  ///
  /// In en, this message translates to:
  /// **'Grace Hopper'**
  String get hopperName;

  /// No description provided for @hopperBio.
  ///
  /// In en, this message translates to:
  /// **'Devised theory of machine-independent programming languages.'**
  String get hopperBio;

  /// No description provided for @turingName.
  ///
  /// In en, this message translates to:
  /// **'Alan Turing'**
  String get turingName;

  /// No description provided for @turingBio.
  ///
  /// In en, this message translates to:
  /// **'Father of theoretical computer science & artificial intelligence.'**
  String get turingBio;

  /// No description provided for @liskovName.
  ///
  /// In en, this message translates to:
  /// **'Barbara Liskov'**
  String get liskovName;

  /// No description provided for @liskovBio.
  ///
  /// In en, this message translates to:
  /// **'Turing Award winner; inventor of Liskov substitution principle.'**
  String get liskovBio;

  /// No description provided for @wozniakName.
  ///
  /// In en, this message translates to:
  /// **'Steve Wozniak'**
  String get wozniakName;

  /// No description provided for @wozniakBio.
  ///
  /// In en, this message translates to:
  /// **'Developed the {appleOne} & {appleTwo} microcomputers.'**
  String wozniakBio(Object appleOne, Object appleTwo);

  /// No description provided for @bernersLeeName.
  ///
  /// In en, this message translates to:
  /// **'Tim Berners-Lee'**
  String get bernersLeeName;

  /// No description provided for @bernersLeeBio.
  ///
  /// In en, this message translates to:
  /// **'Inventor of the World Wide Web.'**
  String get bernersLeeBio;

  /// No description provided for @gatesName.
  ///
  /// In en, this message translates to:
  /// **'Bill Gates'**
  String get gatesName;

  /// No description provided for @gatesBio.
  ///
  /// In en, this message translates to:
  /// **'Co-founder of {microsoft}; philanthropist.'**
  String gatesBio(Object microsoft);

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @settingsScreen.
  ///
  /// In en, this message translates to:
  /// **'Settings Screen'**
  String get settingsScreen;

  /// No description provided for @itemTotal.
  ///
  /// In en, this message translates to:
  /// **'Your total is: {value}'**
  String itemTotal(double value);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
