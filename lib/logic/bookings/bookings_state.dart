part of 'bookings_cubit.dart';

abstract class BookingsState extends Equatable {
  const BookingsState();
}

class BookingsInitial extends BookingsState {
  @override
  List<Object> get props => [];
}

class BookingsLoading extends BookingsState {
  @override
  List<Object> get props => [];
}

class BookingsSuccess extends BookingsState {
  final List<BookingsModel> bookings;

  const BookingsSuccess({required this.bookings});

  @override
  List<Object> get props => [bookings];
}

class BookingsError extends BookingsState {
  final String error;

  const BookingsError({required this.error});

  @override
  List<Object> get props => [error];
}