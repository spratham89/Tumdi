import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tumdi_1/blocs/search/search_events.dart';
import 'package:tumdi_1/blocs/search/search_states.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(EmptySearchState()) {
    on<SearchingEvent>(
      (event, emit) {
        emit(state.copyWith(data: event.data));
      },
    );
  }
}
