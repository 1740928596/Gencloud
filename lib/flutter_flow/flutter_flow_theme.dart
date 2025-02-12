// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color color1;
  late Color customColor1;
  late Color pink;
  late Color littleGrey;
  late Color muchGrey;
  late Color orange;
  late Color simpleGray;
  late Color chart;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4747EE);
  late Color secondary = const Color(0xFFD3E3FD);
  late Color tertiary = const Color(0xFFC3E7FF);
  late Color alternate = const Color(0x00000000);
  late Color primaryText = const Color(0xFF131313);
  late Color secondaryText = const Color(0xFF7F7F7F);
  late Color primaryBackground = const Color(0xFFF0F0F0);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFFF0F0F0);
  late Color accent2 = const Color(0xFF031E39);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF29B973);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color color1 = const Color(0xFF4747EE);
  late Color customColor1 = const Color(0x1D4747EE);
  late Color pink = const Color(0xFFDC66B9);
  late Color littleGrey = const Color(0xFFF7F7F7);
  late Color muchGrey = const Color(0xFFD9D9D9);
  late Color orange = const Color(0xFFF28975);
  late Color simpleGray = const Color(0xFFEEEEEE);
  late Color chart = const Color(0xFFFFFFFF);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Inter';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.w800,
        fontSize: 40.0,
      );
  String get displayMediumFamily => 'Inter';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.w800,
        fontSize: 32.0,
      );
  String get displaySmallFamily => 'Inter';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.w800,
        fontSize: 28.0,
      );
  String get headlineLargeFamily => 'Inter';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
      );
  String get headlineMediumFamily => 'Inter';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 22.0,
      );
  String get headlineSmallFamily => 'Inter';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      );
  String get titleLargeFamily => 'Inter';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      );
  String get titleMediumFamily => 'Inter';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 17.0,
      );
  String get titleSmallFamily => 'Inter';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Inter';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 15.0,
      );
  String get labelMediumFamily => 'Inter';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Inter';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 13.0,
      );
  String get bodyLargeFamily => 'Inter';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyMediumFamily => 'Inter';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 11.0,
      );
  String get bodySmallFamily => 'Inter';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 10.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4747EE);
  late Color secondary = const Color(0x1E287BE8);
  late Color tertiary = const Color(0xFF004A77);
  late Color alternate = const Color(0x00000000);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF7F7F7F);
  late Color primaryBackground = const Color(0xFF0C0C0C);
  late Color secondaryBackground = const Color(0xFF1E1F21);
  late Color accent1 = const Color(0xFF272727);
  late Color accent2 = const Color(0xFFDDF2FB);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xB2262D34);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color color1 = const Color(0xFF4747EE);
  late Color customColor1 = const Color(0x1D4747EE);
  late Color pink = const Color(0xFFDC66B9);
  late Color littleGrey = const Color(0xFF0C0C0C);
  late Color muchGrey = const Color(0xFF191919);
  late Color orange = const Color(0xFFF87A62);
  late Color simpleGray = const Color(0xFF262626);
  late Color chart = const Color(0xFF3D3D3D);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            );
}
