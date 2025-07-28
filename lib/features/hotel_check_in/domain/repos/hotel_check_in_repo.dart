import 'package:dartz/dartz.dart';
import 'package:nxt_assessment/core/model/error_model.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/reservation_model.dart';

abstract class HotelCheckInRepo {
  Future<Either<List<ReservationModel>, ErrorModel>> getReservations();
}
