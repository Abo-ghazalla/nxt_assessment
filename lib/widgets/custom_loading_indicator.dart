import 'package:flutter/material.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: CircularProgressIndicator(
        color: context.themeColors().blackInLightWhiteInDark
      ),
    );
  }
}
