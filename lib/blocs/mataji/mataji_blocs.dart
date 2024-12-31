import 'package:bloc/bloc.dart';
import 'package:tumdi_1/blocs/mataji/mataji_events.dart';
import 'package:tumdi_1/blocs/mataji/mataji_states.dart';
import 'package:tumdi_1/models/mataji/mataji_model.dart';
import 'package:tumdi_1/repo/mataji/matajirepository.dart';

class MatajiBloc extends Bloc<MatajiEvent, MatajiState> {
  final MatajiRepository _matajiRepository;
  List<MatajiModel> _allItems = []; // Store all items locally for filtering

  MatajiBloc(this._matajiRepository) : super(MatajiLoadingState()) {
    on<FetchMataji>((event, emit) async {
      emit(MatajiLoadingState());
      try {
        _allItems = await _matajiRepository.getMatajiImages();
        emit(MatajiLoadedState(_allItems));
      } catch (e) {
        emit(MatajiErrorState(e.toString()));
      }
    });
  }
}
