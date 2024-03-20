import 'package:flutter/material.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/hotel_check_in_bottom_sheet.dart';
import 'package:nxt_assessment/utils/constants/app_strings.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';
import 'package:nxt_assessment/utils/helpers/popups_helper.dart';
import 'package:nxt_assessment/widgets/buttons/app_primary_button.dart';
import 'package:nxt_assessment/widgets/buttons/app_secondary_button.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44),
      child: Column(
        children: [
          AppPrimaryButton(
            label: AppStrings.openReservation,
            onTap: () {
              PopUpsHelper.showDraggableAppModelSheet(child: const HotelCheckInInfoWidget());
            },
          ),
          const SizedBox(height: 24),
          AppSecondaryButton(
            label: AppStrings.showIOSTicket,
            onTap: () {},
          ),
          const SizedBox(height: 24),
          TextButton(
            onPressed: () {},
            child: Text(
              AppStrings.showAndroidTicket,
              style: context.themeTextStyles().labelLarge?.copyWith(color: context.themeColors().buttonColor),
            ),
          ),
        ],
      ),
    );
  }
}
