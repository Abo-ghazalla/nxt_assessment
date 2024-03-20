import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nxt_assessment/di/dependency_init.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/blocs/hotel_check_in_info_cubit/hotel_check_in_info_cubit.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/widgets/multiple_stays.dart';
import 'package:nxt_assessment/features/hotel_check_in/presentation/ui/widgets/single_stay.dart';
import 'package:nxt_assessment/widgets/custom_loading_indicator.dart';
import 'package:nxt_assessment/widgets/empty_data_widget.dart';
import 'package:nxt_assessment/widgets/error_widget_with_try_again_button.dart';

class HotelCheckInInfoWidget extends StatelessWidget {
  const HotelCheckInInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HotelCheckInInfoCubit>()..fetchHotelCheckInInfo(),
      child: BlocBuilder<HotelCheckInInfoCubit, HotelCheckInInfoState>(
        builder: (context, state) {
          return state.when(
            loading: () => const CustomLoadingIndicator(),
            successWithEmptyData: () => const EmptyDataWidget(),
            successWithSingleStay: (reservation) => const SingleStay(),
            successWithMultipleStays: (reservations) => const MultipleStays(),
            failure: (error) => ErrorWidgetWithTryAgainButton(
              errorMsg: error,
              onTryAgain: context.read<HotelCheckInInfoCubit>().fetchHotelCheckInInfo,
            ),
          );
        },
      ),
    );
  }
}
