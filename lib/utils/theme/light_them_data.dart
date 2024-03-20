import 'package:flutter/material.dart';
import 'package:nxt_assessment/utils/theme/colors_extension.dart';

ThemeData getLightThemeData() => ThemeData(
      fontFamily: "SpPro",
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: 15, color: Colors.black),
        labelLarge: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ).copyWith(
      extensions: <ThemeExtension<dynamic>>[
        ColorsExtension(
          dividerColor: const Color(0xff9A9A9A),
          darkGreyBackgroundColor: const Color(0xffDEDEDE),
          lightGreyBackgroundColor: const Color(0xffEEEEEE),
          blackInLightWhiteInDark: Colors.black,
          buttonTextColor: const Color(0xffE0E6F3),
          buttonColor: const Color(0xFF0E1A2D),
          starColor: const Color(0xFFFFD979),
          blackInDarkWhiteInLight: Colors.white,
        ),
      ],
    );
