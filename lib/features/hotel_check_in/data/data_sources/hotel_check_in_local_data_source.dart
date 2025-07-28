import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:nxt_assessment/core/data_sources/local_data_source.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/reservations_res_model.dart';
import 'package:nxt_assessment/utils/constants/local_storage_const.dart';

abstract class HotelCheckInLocalDataSource {
  Future<ReservationsResponseModel?> getReservations();
}


@Injectable(as: HotelCheckInLocalDataSource)
class HotelCheckInLocalDataSourceImpl implements HotelCheckInLocalDataSource {
  final LocalDataSource _localDataSource;

  HotelCheckInLocalDataSourceImpl(this._localDataSource);

  @override
  Future<ReservationsResponseModel?> getReservations() async {
    final res = await _localDataSource.read(LocalStorageConst.reservations);

    if (res != null) {
      return ReservationsResponseModel.fromJson(json.decode(res));
    } else {
      return null;
    }
  }
}
