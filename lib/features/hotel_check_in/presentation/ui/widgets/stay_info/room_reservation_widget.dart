import 'package:flutter/material.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/room_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/widgets/title_subtitle_column.dart';
import 'package:nxt_assessment/utils/constants/app_strings.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';
import 'package:nxt_assessment/widgets/custom_dotted_line.dart';

class RoomReservationWidget extends StatelessWidget {
  final int index;
  final RoomModel room;
  const RoomReservationWidget({
    super.key,
    required this.room,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${AppStrings.roomReservation} $index",
          style: context.themeTextStyles().titleLarge,
        ),
        const SizedBox(height: 35),
        Text(
          "${AppStrings.guests}:",
          style: context.themeTextStyles().titleLarge,
        ),
        const SizedBox(height: 10),
        for (int i = 0; i < (room.guests?.length ?? 0); i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(room.guests?[i].avatar ?? "")),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    "${room.guests?[i].firstName ?? ""} ${room.guests?[i].lastName ?? ""}",
                    style: context.themeTextStyles().displayMedium,
                  ),
                )
              ],
            ),
          ),
        const SizedBox(height: 35),
        Row(
          children: [
            Expanded(
              child: TitleAndSubtitleColumn(
                title: AppStrings.roomType,
                subtitle: room.roomTypeName ?? "",
              ),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: 35),
        Row(
          children: [
            Expanded(
              child: TitleAndSubtitleColumn(
                title: AppStrings.roomNumber,
                subtitle: room.roomNumber ?? "",
              ),
            ),
            Expanded(
              child: TitleAndSubtitleColumn(
                title: AppStrings.sleeps,
                subtitle: room.roomCapacity?.toString() ?? "",
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        const CustomDottedLine(),
      ],
    );
  }
}
