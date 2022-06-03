import 'package:flutter/material.dart';

/// [AppTheme] is class that defines [ThemeData] for light and dark themes
class AppTheme {
  ThemeData get lightTheme => ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 57, fontWeight: FontWeight.normal),
          headline3: TextStyle(fontSize: 45, fontWeight: FontWeight.normal),
          headline4: TextStyle(fontSize: 36, fontWeight: FontWeight.normal),
          headline5: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
          headline6: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
          bodyText1: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          subtitle1: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          subtitle2: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          caption: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72, fontWeight: FontWeight.normal),
          headline2: TextStyle(fontSize: 57, fontWeight: FontWeight.normal),
          headline3: TextStyle(fontSize: 45, fontWeight: FontWeight.normal),
          headline4: TextStyle(fontSize: 36, fontWeight: FontWeight.normal),
          headline5: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
          headline6: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
          bodyText1: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          subtitle1: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          subtitle2: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          caption: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      );
}
