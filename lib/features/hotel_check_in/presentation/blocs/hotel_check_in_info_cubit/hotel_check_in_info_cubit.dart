import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'hotel_check_in_info_state.dart';
part 'hotel_check_in_info_cubit.freezed.dart';

@injectable
class HotelCheckInInfoCubit extends Cubit<HotelCheckInInfoState> {
  HotelCheckInInfoCubit() : super(const HotelCheckInInfoState.loading());

  Future<void> fetchHotelCheckInInfo() async {
    emit(const HotelCheckInInfoState.loading());

    await Future.delayed(const Duration(seconds: 2));

    if (!isClosed) emit(const HotelCheckInInfoState.success());
  }
}
