part of 'hotel_check_in_info_cubit.dart';

@freezed
class HotelCheckInInfoState with _$HotelCheckInInfoState {
  const factory HotelCheckInInfoState.loading() = _Loading;
  const factory HotelCheckInInfoState.successWithEmptyData() = _SuccessWithEmptyData;
  const factory HotelCheckInInfoState.successWithMultipleStays(ReservationModel reservation) =
      _SuccessWithMultipleStays;
  const factory HotelCheckInInfoState.successWithSingleStay(ReservationModel reservation) = _SuccessWithSingleStay;
  const factory HotelCheckInInfoState.failure(String error) = _Failure;
}
