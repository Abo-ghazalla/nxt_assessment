import 'package:flutter/material.dart';

class ColorsExtension extends ThemeExtension<ColorsExtension> {
  final Color dividerColor;
  final Color lightGreyBackgroundColor;
  final Color darkGreyBackgroundColor;
  final Color blackInLightWhiteInDark;
  final Color blackInDarkWhiteInLight;
  final Color buttonColor;
  final Color buttonTextColor;
  final Color starColor;

  ColorsExtension({
    required this.dividerColor,
    required this.lightGreyBackgroundColor,
    required this.darkGreyBackgroundColor,
    required this.blackInLightWhiteInDark,
    required this.buttonColor,
    required this.buttonTextColor,
    required this.starColor,
    required this.blackInDarkWhiteInLight,
  });

  @override
  ColorsExtension copyWith({
    Color? dividerColor,
    Color? lightGreyBackgroundColor,
    Color? darkGreyBackgroundColor,
    Color? blackInLightWhiteInDark,
    Color? buttonColor,
    Color? buttonTextColor,
    Color? starColor,
    Color? blackInDarkWhiteInLight,
  }) {
    return ColorsExtension(
      dividerColor: dividerColor ?? this.dividerColor,
      lightGreyBackgroundColor: lightGreyBackgroundColor ?? this.lightGreyBackgroundColor,
      darkGreyBackgroundColor: darkGreyBackgroundColor ?? this.darkGreyBackgroundColor,
      blackInLightWhiteInDark: blackInLightWhiteInDark ?? this.blackInLightWhiteInDark,
      buttonColor: buttonColor ?? this.buttonColor,
      buttonTextColor: buttonTextColor ?? this.buttonTextColor,
      starColor: starColor ?? this.starColor,
      blackInDarkWhiteInLight: blackInDarkWhiteInLight ?? this.blackInDarkWhiteInLight,
    );
  }

  @override
  ThemeExtension<ColorsExtension> lerp(covariant ThemeExtension<ColorsExtension>? other, double t) {
    if (other is! ColorsExtension) {
      return this;
    }

    return ColorsExtension(
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t)!,
      lightGreyBackgroundColor: Color.lerp(lightGreyBackgroundColor, other.lightGreyBackgroundColor, t)!,
      darkGreyBackgroundColor: Color.lerp(darkGreyBackgroundColor, other.darkGreyBackgroundColor, t)!,
      blackInLightWhiteInDark: Color.lerp(blackInLightWhiteInDark, other.blackInLightWhiteInDark, t)!,
      buttonColor: Color.lerp(buttonColor, other.buttonColor, t)!,
      buttonTextColor: Color.lerp(buttonTextColor, other.buttonTextColor, t)!,
      starColor: Color.lerp(starColor, other.starColor, t)!,
      blackInDarkWhiteInLight: Color.lerp(blackInDarkWhiteInLight, other.blackInDarkWhiteInLight, t)!,
    );
  }
}
