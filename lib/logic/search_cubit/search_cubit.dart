import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project_doctor/logic/search_cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitialState());

  Future<void> performSearch(String query) async {
    emit(SearchLoadingState());

    try {
      final dio = Dio();
      final response = await dio.get(
          'http://hamdyahmed.pythonanywhere.com/booking/search/nurses/',
          queryParameters: {'query': query});

      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.data);
        final List<String> results =
            responseData.map((item) => item.toString()).toList();

        if (results.isNotEmpty) {
          emit(SearchSuccessState(results));
        } else {
          emit(SearchEmptyState());
        }
      } else {
        emit(SearchErrorState('Failed to load search results'));
      }
    } catch (e) {
      emit(SearchErrorState('An error occurred: $e'));
    }
  }
}
