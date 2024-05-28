import 'package:era_developers_test_flutter/theme/colors.dart';
import 'package:era_developers_test_flutter/theme/fonts.dart';
import 'package:flutter/material.dart';

ThemeData getThemeData(BuildContext context) => ThemeData.light().copyWith(
      primaryColor: primaryColor,
      secondaryHeaderColor: secondaryColor,
      scaffoldBackgroundColor: backgroundColor,
      iconTheme: const IconThemeData(color: iconColor),
      textTheme: Theme.of(context).textTheme.apply(
            fontFamily: defaultFont,
            bodyColor: textColor,
          ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(color: iconColor),
        titleTextStyle: TextStyle(
          color: textColor,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            color: primaryColor,
            fontSize: 16.0,
          ),
        ),
      ),
    );
