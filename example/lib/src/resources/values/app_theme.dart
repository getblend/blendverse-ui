import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get lightTheme => ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 57.0, fontWeight: FontWeight.normal),
          headline3: TextStyle(fontSize: 45.0, fontWeight: FontWeight.normal),
          headline4: TextStyle(fontSize: 36.0, fontWeight: FontWeight.normal),
          headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal),
          headline6: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
          bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
          bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
          subtitle1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
          subtitle2: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),
          caption: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),
        ),
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72, fontWeight: FontWeight.normal),
          headline2: TextStyle(fontSize: 57.0, fontWeight: FontWeight.normal),
          headline3: TextStyle(fontSize: 45.0, fontWeight: FontWeight.normal),
          headline4: TextStyle(fontSize: 36.0, fontWeight: FontWeight.normal),
          headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal),
          headline6: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
          bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
          bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
          subtitle1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
          subtitle2: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),
          caption: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),
        ),
      );
}
