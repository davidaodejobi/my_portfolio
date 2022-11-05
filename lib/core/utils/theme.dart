import 'package:flutter/material.dart';

import '../../constant/constant.dart';

class AppTheme extends ChangeNotifier {
  static ThemeData light() {
    return ThemeData.light().copyWith(
      useMaterial3: true,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      scaffoldBackgroundColor: AppColor.backgroundColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColor.primaryColor, // foreground (text) color
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFFC5C5C5),
        elevation: 0,
      ),
      dividerTheme: const DividerThemeData(
        color: AppColor.greyColor2,
        thickness: 1,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 72.0,
          fontFamily: 'Inter',
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          fontSize: 36.0,
          fontFamily: 'Inter',
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
        headline3: TextStyle(
          fontSize: 27.0,
          fontFamily: 'Inter',
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        headline4: TextStyle(
          fontSize: 22.0,
          fontFamily: 'Inter',
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
        headline5: TextStyle(
          fontSize: 18.0,
          fontFamily: 'Inter',
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
        headline6: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Inter',
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
        bodyText1: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Inter',
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        bodyText2: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Inter',
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        subtitle1: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Inter',
          color: Colors.black,
          fontWeight: FontWeight.w300,
        ),
        caption: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Inter',
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        overline: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Inter',
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData.light().copyWith(
      useMaterial3: true,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      scaffoldBackgroundColor: const Color(0xFF091C32),
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFFC5C5C5),
        elevation: 0,
      ),
      dividerTheme: const DividerThemeData(
        color: AppColor.greyColor2,
        thickness: 1,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 72.0,
          fontFamily: 'Inter',
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          fontSize: 36.0,
          fontFamily: 'Inter',
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
        headline3: TextStyle(
          fontSize: 27.0,
          fontFamily: 'Inter',
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        headline4: TextStyle(
          fontSize: 22.0,
          fontFamily: 'Inter',
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
        headline5: TextStyle(
          fontSize: 18.0,
          fontFamily: 'Inter',
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
        headline6: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Inter',
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
        bodyText1: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Inter',
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        bodyText2: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Inter',
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        subtitle1: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Inter',
          color: Colors.white,
          fontWeight: FontWeight.w300,
        ),
        caption: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Inter',
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        overline: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Inter',
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  static bool _isDarkTheme = ThemeMode.system == ThemeMode.dark ? true : false;
  bool get isDarkTheme => _isDarkTheme;

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}
