import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/reservation_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/domain/use_cases/hotel_check_in_use_case.dart';

part 'hotel_check_in_info_state.dart';
part 'hotel_check_in_info_cubit.freezed.dart';

@injectable
class HotelCheckInInfoCubit extends Cubit<HotelCheckInInfoState> {
  final HotelCheckInUseCase _hotelCheckInUseCase;
  HotelCheckInInfoCubit(this._hotelCheckInUseCase) : super(const HotelCheckInInfoState.loading());

  Future<void> fetchHotelCheckInInfo() async {
    emit(const HotelCheckInInfoState.loading());

    final result = await _hotelCheckInUseCase.execute();

    if (!isClosed) {
      result.fold(
        (reservations) {
          if (reservations.isEmpty || (reservations.first.stays?.isEmpty ?? true)) {
            emit(const HotelCheckInInfoState.successWithEmptyData());
          } else if (reservations.first.stays!.length == 1) {
            emit(HotelCheckInInfoState.successWithSingleStay(reservations.first));
          } else {
            emit(HotelCheckInInfoState.successWithMultipleStays(reservations.first));
          }
        },
        (error) => emit(HotelCheckInInfoState.failure(error.errorMsg)),
      );
    }
  }
}
