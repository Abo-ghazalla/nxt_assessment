import 'package:flutter/material.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';

class AppSecondaryButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String label;
  final void Function()? onTap;
  const AppSecondaryButton({
    super.key,
    this.height,
    this.width,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: context.themeColors().buttonColor,
          width: 1,
        ),
      ),
      height: height,
      width: width,
      padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
      alignment: Alignment.center,
      child: Text(
        label,
        style: context.themeTextStyles().labelLarge?.copyWith(color: context.themeColors().buttonColor),
      ),
    );
  }
}
