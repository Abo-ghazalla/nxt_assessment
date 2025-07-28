import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nxt_assessment/core/model/error_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/data_sources/hotel_check_in_local_data_source.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/data_sources/hotel_check_in_remote_data_source.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/reservation_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/domain/repos/hotel_check_in_repo.dart';

@Injectable(as: HotelCheckInRepo)
class HotelCheckInRepoImpl implements HotelCheckInRepo {
  final HotelCheckInLocalDataSource _localDataSource;
  final HotelCheckInRemoteDataSource _remoteDataSource;

  HotelCheckInRepoImpl(this._localDataSource, this._remoteDataSource);

  @override
  Future<Either<List<ReservationModel>, ErrorModel>> getReservations() async {
    try {
      final cachedReservations = await _localDataSource.getReservations();

      if (cachedReservations?.reservations != null) {
        return Left(cachedReservations!.reservations!);
      } else {
        final reservations = await _remoteDataSource.getReservations();

        if (reservations?.reservations != null) {
          return Left(reservations!.reservations!);
        } else {
          throw Exception("Something went wrong");
        }
      }
    } on Exception catch (e) {
      return Right(ErrorModel(errorMsg: e.toString()));
    }
  }
}
