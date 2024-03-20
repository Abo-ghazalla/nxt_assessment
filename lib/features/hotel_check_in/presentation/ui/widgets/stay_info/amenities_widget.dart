import 'package:flutter/material.dart';
import 'package:nxt_assessment/utils/constants/app_strings.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';

class AmenitiesWidget extends StatelessWidget {
  final String amenities;
  const AmenitiesWidget(this.amenities, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.amenities,
          style: context.themeTextStyles().titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          amenities ,
          style: context.themeTextStyles().displayMedium,
        )
      ],
    );
  }
}
