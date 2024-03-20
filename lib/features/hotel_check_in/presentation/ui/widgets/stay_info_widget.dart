import 'package:flutter/material.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/reservation_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/stay_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/widgets/stay_info/amenities_widget.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/widgets/stay_info/gallery_widget.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/widgets/stay_info/location_widget.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/widgets/stay_info/main_check_in_info.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/widgets/stay_info/room_reservation_widget.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/widgets/stay_info/ticket_widget.dart';
import 'package:nxt_assessment/widgets/custom_dotted_line.dart';

class StayInfoWidget extends StatelessWidget {
  final StayModel stayModel;
  final ReservationModel reservation;
  const StayInfoWidget({
    required this.reservation,
    required this.stayModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainCheckInInfo(
          reservation: reservation,
          stayModel: stayModel,
        ),
        const SizedBox(height: 40),
        LocationWidget(stayModel),
        const SizedBox(height: 40),
        if (reservation.userTickets?.isNotEmpty ?? false) ...[
          TicketWidget(reservation.userTickets!),
          const SizedBox(height: 40),
        ],
        const CustomDottedLine(),
        const SizedBox(height: 40),
        for (int i = 0; i < (stayModel.rooms?.length ?? 0); i++) ...[
          RoomReservationWidget(
            index: i + 1,
            room: stayModel.rooms![i],
          ),
          const SizedBox(height: 40),
        ],
        GalleryWidget(stayModel.stayImages ?? []),
        const SizedBox(height: 40),
        AmenitiesWidget(stayModel.amenities ?? ''),
        const SizedBox(height: 40),
      ],
    );
  }
}
