import 'package:bloc/bloc.dart';
import 'package:tumdi_1/blocs/blogs/blogs_events.dart';
import 'package:tumdi_1/blocs/business/business_events.dart';
import 'package:tumdi_1/blocs/business/business_states.dart';
import 'package:tumdi_1/models/business/business_model.dart';
import 'package:tumdi_1/repo/business/businessrepository.dart';

class BusinessBloc extends Bloc<BusinessEvent, Businesstate> {
  final BusinessRepository _businessRepository;
  List<BusinessModel> _allItems = []; // Store all items locally for filtering

  BusinessBloc(this._businessRepository) : super(BusinessLoadingState()) {
    on<FetchBusiness>((event, emit) async {
      emit(BusinessLoadingState());
      try {
        _allItems = await _businessRepository.getBusinessImages();
        emit(BusinessLoadedState(_allItems));
      } catch (e) {
        emit(BusinessErrorState(e.toString()));
      }
    });
  }
}
