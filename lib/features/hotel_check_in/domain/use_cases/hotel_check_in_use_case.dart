import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:nxt_assessment/core/model/error_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/reservation_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/domain/repos/hotel_check_in_repo.dart';

@injectable
class HotelCheckInUseCase {
  final HotelCheckInRepo _hotelCheckInRepo;

  HotelCheckInUseCase(this._hotelCheckInRepo);

  Future<Either<List<ReservationModel>, ErrorModel>> execute() async {
    try {
      final result = await _hotelCheckInRepo.getReservations();

      if (result?.reservations != null) {
        return Left(result?.reservations ?? []);
      } else {
        throw Exception("Something went wrong");
      }
    } on Exception catch (e) {
      return Right(ErrorModel(errorMsg: e.toString()));
    }
  }
}
