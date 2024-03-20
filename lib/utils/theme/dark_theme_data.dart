import 'package:flutter/material.dart';

import 'colors_extension.dart';

ThemeData getDarkThemeData() => ThemeData(
      brightness: Brightness.dark,
      fontFamily: "SpPro",
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.white, brightness: Brightness.dark),
      scaffoldBackgroundColor: Colors.black,
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
        labelLarge: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: 15, color: Color(0xFF9A9A9A)),
      ),
    ).copyWith(
      extensions: <ThemeExtension<dynamic>>[
        ColorsExtension(
          dividerColor: const Color(0xff4C4C4C),
          darkGreyBackgroundColor: const Color(0xff2D2D2D),
          lightGreyBackgroundColor: const Color(0xff1E1E1E),
          blackInLightWhiteInDark: Colors.white,
          buttonColor: const Color(0xffE0E6F3),
          buttonTextColor: const Color(0xFF0E1A2D),
          starColor: const Color(0xFFD4B363),
          blackInDarkWhiteInLight: Colors.black,
        ),
      ],
    );
