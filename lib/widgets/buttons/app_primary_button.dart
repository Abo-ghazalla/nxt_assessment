import 'package:flutter/material.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';

class AppPrimaryButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String label;
  final void Function()? onTap;
  const AppPrimaryButton({
    super.key,
    this.height,
    this.width,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: context.themeColors().buttonColor,
        height: height,
        width: width,
        padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: Text(
          label,
          style: context.themeTextStyles().labelLarge?.copyWith(color: context.themeColors().buttonTextColor),
        ),
      ),
    );
  }
}
