import 'package:flutter/material.dart';
import 'package:nxt_assessment/utils/constants/app_strings.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.noData,
        style: context.themeTextStyles().titleMedium,
      ),
    );
  }
}
