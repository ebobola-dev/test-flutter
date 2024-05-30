import 'package:era_developers_test_flutter/theme/colors.dart';
import 'package:era_developers_test_flutter/theme/fonts.dart';
import 'package:flutter/material.dart';

ThemeData getThemeData(BuildContext context) => ThemeData.light().copyWith(
      primaryColor: primaryColor,
      secondaryHeaderColor: secondaryColor,
      scaffoldBackgroundColor: backgroundColor,
      iconTheme: const IconThemeData(color: iconColor),
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 28.0),
        titleMedium: TextStyle(fontSize: 20.0),
        bodyMedium: TextStyle(fontSize: 16.0),
        bodySmall: TextStyle(fontSize: 12.0),
      ).apply(
        fontFamily: defaultFont,
        bodyColor: textColor,
        displayColor: textColor,
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        iconTheme: IconThemeData(color: iconColor),
        titleTextStyle: TextStyle(
          color: textColor,
          fontSize: 18.0,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            color: textColor,
            fontSize: 18.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        clipBehavior: Clip.hardEdge,
        elevation: 4,
        shadowColor: const Color(0x40000000),
      ),
    );
