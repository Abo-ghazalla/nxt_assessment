import 'package:flutter/material.dart';
import 'package:nxt_assessment/utils/theme/colors_extension.dart';

extension ThemeExtensions on BuildContext {
  ColorsExtension themeColors() {
    return Theme.of(this).extension<ColorsExtension>()!;
  }

  TextTheme themeTextStyles() {
    return Theme.of(this).textTheme;
  }
}
