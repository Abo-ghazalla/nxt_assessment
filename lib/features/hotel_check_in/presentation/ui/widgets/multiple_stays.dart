import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/blocs/hotel_check_in_info_cubit/hotel_check_in_info_cubit.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/widgets/stay_info_widget.dart';
import 'package:nxt_assessment/utils/constants/app_strings.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';
import 'package:nxt_assessment/widgets/custom_cached_image.dart';

class MultipleStays extends StatelessWidget {
  const MultipleStays({super.key});

  @override
  Widget build(BuildContext context) {
    final reservation =
        context.read<HotelCheckInInfoCubit>().state.mapOrNull(successWithMultipleStays: (state) => state)!.reservation;
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomCachedNetworkImage(
            imageUrl: reservation.stays!.first.stayImages?.firstOrNull ?? "",
            height: 375,
            width: double.infinity,
            boxFit: BoxFit.cover,
          ),
          const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  AppStrings.hotelCheckIn,
                  style: context.themeTextStyles().titleLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  AppStrings.multipleReservations,
                  style: context.themeTextStyles().displayMedium,
                ),
              ),
              const SizedBox(height: 40),
              for (final stay in reservation.stays!)
                Container(
                  color: context.themeColors().lightGreyBackgroundColor,
                  margin: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
                  child: ExpandablePanel(
                    theme:  ExpandableThemeData(
                      iconPlacement: ExpandablePanelIconPlacement.left,
                      alignment: Alignment.bottomLeft,
                      iconSize: 38,
                      iconPadding: const EdgeInsets.only(top: 12),
                      iconColor: context.themeColors().blackInLightWhiteInDark
                    ),
                    header: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 4),
                      child: Text(
                        stay.name,
                        style: context.themeTextStyles().titleLarge?.copyWith(fontSize: 24),
                      ),
                    ),
                    collapsed: const SizedBox(),
                    
                    expanded: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: StayInfoWidget(
                        reservation: reservation,
                        stayModel: stay,
                      ),
                    ),
                  ),
                ),
              // ReservationInfoWidget(reservation),
            ],
          ),
        ],
      ),
    );
  }
}
