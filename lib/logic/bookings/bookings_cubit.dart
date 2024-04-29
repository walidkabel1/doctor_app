import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project_doctor/models/Bookings_model.dart';

part 'bookings_state.dart';

class BookingsCubit extends Cubit<BookingsState> {
  BookingsCubit() : super(BookingsInitial());

  BookingsCubit get(context) => BlocProvider.of(context);

  void getBookings() async {
    emit(BookingsLoading());
    try {
      final response = await Dio().get(
        'https://ahmedhamdy.pythonanywhere.com/booking/api/bookings/list/',
        // options: Options(
        //   headers: {
        //     'Authorization': 'Bearer ${CacheHelper.getToken()}',
        //   },
        // ),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<BookingsModel> bookings = [];
        response.data.forEach((booking) {
          bookings.add(BookingsModel.fromJson(booking));
        });
        emit(BookingsSuccess(bookings: bookings));
      } else {
        emit(const BookingsError(error: 'Error occurred while fetching bookings'));
      }
    } catch (e) {
      emit(BookingsError(error: e.toString()));
    }
  }
}
