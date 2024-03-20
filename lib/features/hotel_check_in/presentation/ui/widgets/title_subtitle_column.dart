import 'package:flutter/material.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';

class TitleAndSubtitleColumn extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? subtitleWidget;
  const TitleAndSubtitleColumn({super.key, required this.title, this.subtitleWidget, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.themeTextStyles().titleLarge,
        ),
        const SizedBox(height: 6),
        if (subtitle != null)
          Text(
            subtitle!,
            style: context.themeTextStyles().displayMedium,
          )else if(subtitleWidget!=null) subtitleWidget!,
      ],
    );
  }
}
