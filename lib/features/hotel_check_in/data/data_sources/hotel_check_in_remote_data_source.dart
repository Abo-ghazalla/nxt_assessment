import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:nxt_assessment/core/data_sources/api_data_source.dart';
import 'package:nxt_assessment/core/data_sources/local_data_source.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/reservations_res_model.dart';
import 'package:nxt_assessment/utils/constants/api_const.dart';
import 'package:nxt_assessment/utils/constants/local_storage_const.dart';

abstract class HotelCheckInRemoteDataSource {
  Future<ReservationsResponseModel?> getReservations();
}

@Injectable(as: HotelCheckInRemoteDataSource)
class HotelCheckInRemoteDataSourceImpl implements HotelCheckInRemoteDataSource {
  final ApiDataSource _apiDataSource;

  final LocalDataSource _localDataSource;

  HotelCheckInRemoteDataSourceImpl(this._apiDataSource, this._localDataSource);
  @override
  Future<ReservationsResponseModel?> getReservations() async {
    final res = await _apiDataSource.get<ReservationsResponseModel>(
      path: ApiConst.mobileGuestsUserEvents,
      model: ReservationsResponseModel(),
    );

    final reservations = res.data;

    if (reservations != null) {
      await _localDataSource.write(LocalStorageConst.reservations, json.encode(reservations.toJson()));
    }

    return reservations;
  }
}

