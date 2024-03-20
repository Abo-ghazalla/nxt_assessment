import 'package:injectable/injectable.dart';
import 'package:nxt_assessment/core/data_sources/remote_data_source.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/reservations_res_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/domain/repos/hotel_check_in_repo.dart';
import 'package:nxt_assessment/utils/constants/api_const.dart';

@Injectable(as: HotelCheckInRepo)
class HotelCheckInRepoImpl implements HotelCheckInRepo {
  final RemoteDataSource _remoteDataSource;

  HotelCheckInRepoImpl(this._remoteDataSource);

  @override
  Future<ReservationsResponseModel?> getReservations() async {
    final res = await _remoteDataSource.get<ReservationsResponseModel>(
      path: ApiConst.mobileGuestsUserEvents,
      model: ReservationsResponseModel(),
    );

    return res.data;
  }
}
