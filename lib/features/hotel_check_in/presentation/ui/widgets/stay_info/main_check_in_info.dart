import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/reservation_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/stay_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/widgets/title_subtitle_column.dart';
import 'package:nxt_assessment/utils/constants/app_strings.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';

class MainCheckInInfo extends StatelessWidget {
  final StayModel stayModel;
  final ReservationModel reservation;
  const MainCheckInInfo({
    super.key,
    required this.reservation,
    required this.stayModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TitleAndSubtitleColumn(
                title: AppStrings.from,
                subtitle: reservation.startDate,
              ),
            ),
            Expanded(
              child: TitleAndSubtitleColumn(
                title: AppStrings.till,
                subtitle: reservation.endDate,
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            Expanded(
              child: TitleAndSubtitleColumn(
                title: AppStrings.stars,
                subtitleWidget: RatingBarIndicator(
                  rating: reservation.stays?.firstOrNull?.stars ?? 0,
                  direction: Axis.horizontal,
                  itemSize: 18,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: context.themeColors().starColor,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TitleAndSubtitleColumn(
                title: AppStrings.roomCount,
                subtitle: "${stayModel.rooms?.length ?? 0} ${AppStrings.rooms}",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
