// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get home => 'Home';

  @override
  String get apps => 'Apps';

  @override
  String get blocks => 'Blocks';

  @override
  String get profile => 'Profile';

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get previewAvatar => 'Preview Avatar';

  @override
  String get confirm => 'Confirm';

  @override
  String get personalizeYourExperience => 'Personalize your experience';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get lorem => 'Lorem';

  @override
  String get uploadNewAvatar => 'Upload New Avatar';

  @override
  String get loremIpsumDolorSitAmet => 'Lorem ipsum dolor sit amet';

  @override
  String get none => 'None';

  @override
  String changedToLocaleMessage(String language) {
    return 'Changed to $language';
  }

  @override
  String get localeEnglish => 'English';

  @override
  String get localeSpanish => 'Español';

  @override
  String get localeIndonesian => 'Bahasa Indonesia';

  @override
  String get localeLanguageName => 'English';

  @override
  String get socialLinks => 'Social Links';

  @override
  String get empty => 'Empty';
}
