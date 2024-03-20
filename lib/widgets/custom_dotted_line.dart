import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';

class CustomDottedLine extends StatelessWidget {
  final Color? color;
  const CustomDottedLine({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      lineLength: double.infinity,
      lineThickness: 1.0,
      dashLength: 4.0,
      dashColor: color ?? context.themeColors().dividerColor,
      dashRadius: 0.0,
      dashGapLength: 1.0,
      dashGapColor: Colors.transparent,
      dashGapRadius: 0.0,
    );
  }
}
