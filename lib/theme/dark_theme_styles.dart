import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.red,
      primaryColor: isDarkTheme ? Colors.black : Colors.white,
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.roboto(
          color: isDarkTheme ? Colors.white : Colors.black,
          fontSize: 26,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: GoogleFonts.roboto(
          color: isDarkTheme ? Colors.white : Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: GoogleFonts.roboto(
          color: isDarkTheme
              ? Colors.white.withValues(alpha: .5)
              : Colors.black.withValues(alpha: .5),
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      colorScheme: ColorScheme.dark(
        surface: isDarkTheme ? Color(0xff010005) : Color(0xffF1F5FB),
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      ),
      //indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
      hintColor: isDarkTheme ? Color(0xff280C0B) : Color(0xffEECED3),
      highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),
      focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      cardColor: isDarkTheme ? Colors.white : Colors.black,
      canvasColor: isDarkTheme
          ? Colors.grey[50]
          : Color(0xffD9D9D9).withValues(alpha: .5),
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light(),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: isDarkTheme ? Colors.white : Colors.black,
      ),
    );
  }
}
