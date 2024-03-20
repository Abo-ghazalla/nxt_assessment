import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/stay_model.dart';
import 'package:nxt_assessment/utils/constants/app_strings.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';

class LocationWidget extends StatelessWidget {
  final StayModel stay;
  const LocationWidget(this.stay, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.location,
          style: context.themeTextStyles().titleLarge,
        ),
        const SizedBox(height: 8),
        ColoredBox(
          color: context.themeColors().darkGreyBackgroundColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        stay.name,
                        style: context.themeTextStyles().titleMedium,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "${AppStrings.address}:${stay.address ?? ""}",
                        style: context.themeTextStyles().displayMedium,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 100,
                height: 110,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
