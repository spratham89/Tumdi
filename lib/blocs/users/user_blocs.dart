import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tumdi_1/blocs/users/user_events.dart';
import 'package:tumdi_1/blocs/users/user_states.dart';
import 'package:tumdi_1/models/users/user_model.dart';
import 'package:tumdi_1/repo/users/userepository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;
  List<UserModel> _allItems = []; // Store all items locally for filtering

  UserBloc(this._userRepository) : super(UserLoadingState()) {
    on<FetchItems>((event, emit) async {
      emit(UserLoadingState());
      try {
        _allItems = await _userRepository.getUsers();
        emit(UserLoadedState(_allItems));
      } catch (e) {
        emit(UserErrorState(e.toString()));
      }
    });
    on<SearchItems>((event, emit) {
      final query = event.query.toLowerCase();
      final filteredItems = _allItems
          .where((item) => item.firstName!.toLowerCase().contains(query))
          .toList();
      emit(UserLoadedState(filteredItems));
    });
  }
}
