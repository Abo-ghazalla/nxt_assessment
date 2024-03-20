import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/blocs/hotel_check_in_info_cubit/hotel_check_in_info_cubit.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/widgets/stay_info_widget.dart';
import 'package:nxt_assessment/utils/constants/app_strings.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';
import 'package:nxt_assessment/widgets/custom_cached_image.dart';

class SingleStay extends StatelessWidget {
  const SingleStay({super.key});

  @override
  Widget build(BuildContext context) {
    final reservation =
        context.read<HotelCheckInInfoCubit>().state.mapOrNull(successWithSingleStay: (state) => state)!.reservation;
    final stay = reservation.stays!.first;
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomCachedNetworkImage(
            imageUrl: stay.stayImages?.firstOrNull ?? "",
            height: 375,
            width: double.infinity,
            boxFit: BoxFit.cover,
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.hotelCheckIn,
                  style: context.themeTextStyles().titleLarge,
                ),
                Text(
                  stay.name,
                  style: context.themeTextStyles().displayMedium,
                ),
                const SizedBox(height: 40),
                StayInfoWidget(
                  reservation: reservation,
                  stayModel: stay,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
