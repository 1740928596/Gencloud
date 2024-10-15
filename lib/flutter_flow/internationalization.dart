import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['zh_Hans', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? zh_HansText = '',
    String? enText = '',
  }) =>
      [zh_HansText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    'm1t6qn3u': {
      'zh_Hans': '官方公有云',
      'en': 'Official public cloud',
    },
    'sqkmzqml': {
      'zh_Hans': '个人私有云',
      'en': 'Personal private cloud',
    },
    '655y5qdh': {
      'zh_Hans': 'GenCloud',
      'en': 'GenCloud',
    },
    'f37rsi0o': {
      'zh_Hans': 'Home',
      'en': '',
    },
  },
  // WelcomePage
  {
    'v8ilgea9': {
      'zh_Hans': 'GenCloud\nyour best Remote disk',
      'en': 'GenCloud your best Remote disk',
    },
    'aike10o2': {
      'zh_Hans':
          'Enjoy your winter vacations with warmth\nand amazing sightseeing on the mountains.\nEnjoy the best experience with us!',
      'en':
          'Enjoy your winter vacations with warmth and amazing sightseeing on the mountains. Enjoy the best experience with us!',
    },
    '73b1csrt': {
      'zh_Hans': 'Let’s Go!',
      'en': 'Let’s Go!',
    },
    'bu7ug5bi': {
      'zh_Hans': 'Home',
      'en': '',
    },
  },
  // chat
  {
    'j9wexmjf': {
      'zh_Hans': 'Small message',
      'en': 'Small message',
    },
    'v9u8mn7r': {
      'zh_Hans':
          'This is a long message. The container  is limited to 70% max width and the text will start floating',
      'en':
          'This is a long message. The container is limited to 70% max width and the text will start floating',
    },
    'v5luqoyd': {
      'zh_Hans': '25',
      'en': '25',
    },
    'ntkm2w6m': {
      'zh_Hans': '客服',
      'en': 'customer service',
    },
    'h1zioen9': {
      'zh_Hans': 'last seen recently',
      'en': 'last seen recently',
    },
    '962ksfku': {
      'zh_Hans': 'Start typing',
      'en': 'Start typing',
    },
    'avvfda1s': {
      'zh_Hans': 'Home',
      'en': 'Home',
    },
  },
  // webview
  {
    '0n8ewqd1': {
      'zh_Hans': 'cloud',
      'en': 'cloud',
    },
  },
  // webvieperson
  {
    'x6ehw0fx': {
      'zh_Hans': 'cloud',
      'en': '',
    },
  },
  // setting
  {
    'gdvth8iy': {
      'zh_Hans': 'Settings Page',
      'en': 'Settings Page',
    },
    '1q3xj9ot': {
      'zh_Hans': 'Please evaluate your options below.',
      'en': 'Please evaluate your options below.',
    },
    '1i1vr4m4': {
      'zh_Hans': 'My Subscription',
      'en': 'My Subscription',
    },
    'r8bf1sye': {
      'zh_Hans': 'Getting Started',
      'en': 'Getting Started',
    },
    '7zh9ydtp': {
      'zh_Hans': 'About Us',
      'en': 'About Us',
    },
    'okz0ay32': {
      'zh_Hans': 'Help',
      'en': 'Help',
    },
    'qt841byc': {
      'zh_Hans': 'Privacy Policy',
      'en': 'Privacy Policy',
    },
    '6wop85ff': {
      'zh_Hans': 'Terms & Conditions',
      'en': 'Terms & Conditions',
    },
    'nlgikcvz': {
      'zh_Hans': 'Follow us on',
      'en': 'Follow us on',
    },
    't3gtkeic': {
      'zh_Hans': 'App Versions',
      'en': 'App Versions',
    },
    'e159m5nx': {
      'zh_Hans': 'v0.0.1',
      'en': 'v0.0.1',
    },
    'kjf5z15d': {
      'zh_Hans': 'Home',
      'en': '',
    },
  },
  // Navbar_Dialog
  {
    '14lfodyw': {
      'zh_Hans': '5',
      'en': '5',
    },
  },
  // Navbar_ExpandingDark
  {
    '7ihcdc87': {
      'zh_Hans': 'Home',
      'en': 'Home',
    },
    '5ubxbqr1': {
      'zh_Hans': 'my cloud',
      'en': 'my cloud',
    },
    'm5mmyro1': {
      'zh_Hans': 'chat',
      'en': 'chat',
    },
    'l8dh3iro': {
      'zh_Hans': 'Profile',
      'en': 'Profile',
    },
  },
  // Miscellaneous
  {
    'j6yruklc': {
      'zh_Hans': '请求通知权限',
      'en': '',
    },
    'wfnfly88': {
      'zh_Hans': '',
      'en': '',
    },
    'tru48yyv': {
      'zh_Hans': '',
      'en': '',
    },
    '998mk4nj': {
      'zh_Hans': '',
      'en': '',
    },
    'xrh019za': {
      'zh_Hans': '',
      'en': '',
    },
    'm2s9tvqh': {
      'zh_Hans': '',
      'en': '',
    },
    'jczkiexs': {
      'zh_Hans': '',
      'en': '',
    },
    'idyg6jjk': {
      'zh_Hans': '',
      'en': '',
    },
    '19qj1h31': {
      'zh_Hans': '',
      'en': '',
    },
    '2ayrwcyg': {
      'zh_Hans': '',
      'en': '',
    },
    '73xt6h0k': {
      'zh_Hans': '',
      'en': '',
    },
    'ebyqxh19': {
      'zh_Hans': '',
      'en': '',
    },
    'oelbja32': {
      'zh_Hans': '',
      'en': '',
    },
    'qz2ygsyr': {
      'zh_Hans': '',
      'en': '',
    },
    'ocvb71d3': {
      'zh_Hans': '',
      'en': '',
    },
    'wkvnckye': {
      'zh_Hans': '',
      'en': '',
    },
    'f5hun0wr': {
      'zh_Hans': '',
      'en': '',
    },
    'g8h2icza': {
      'zh_Hans': '',
      'en': '',
    },
    'bykuibgf': {
      'zh_Hans': '',
      'en': '',
    },
    '05ye8l49': {
      'zh_Hans': '',
      'en': '',
    },
    'l0b8mh3t': {
      'zh_Hans': '',
      'en': '',
    },
    'sh43yplx': {
      'zh_Hans': '',
      'en': '',
    },
    'nktj2sum': {
      'zh_Hans': '',
      'en': '',
    },
    'ioq76zpq': {
      'zh_Hans': '',
      'en': '',
    },
    'swj1thit': {
      'zh_Hans': '',
      'en': '',
    },
    't6t4gl0w': {
      'zh_Hans': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
