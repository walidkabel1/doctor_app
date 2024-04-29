abstract class SearchState {}

class SearchInitialState extends SearchState {}

class SearchLoadingState extends SearchState {}

class SearchSuccessState extends SearchState {
  final List<String> results;

  SearchSuccessState(this.results);
}

class SearchEmptyState extends SearchState {}

class SearchErrorState extends SearchState {
  final String errorMessage;

  SearchErrorState(this.errorMessage);
}

// Define the events that can be triggered
abstract class SearchEvent {}

class PerformSearchEvent extends SearchEvent {
  final String query;

  PerformSearchEvent(this.query);
}
