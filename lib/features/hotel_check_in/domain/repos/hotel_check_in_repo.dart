import 'package:nxt_assessment/features/hotel_check_in/data/models/reservations_res_model.dart';

abstract class HotelCheckInRepo {
  Future<ReservationsResponseModel?> getReservations();
}
