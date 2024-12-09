import 'package:bloc/bloc.dart';
import 'package:tumdi_1/blocs/banner/banner_events.dart';
import 'package:tumdi_1/blocs/banner/banner_states.dart';
import 'package:tumdi_1/models/banner/banner_model.dart';

import 'package:tumdi_1/repo/banner/bannerespository.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  final BannerRepository _bannerRepository;
  List<BannersModel> _allItems = []; // Store all items locally for filtering

  BannerBloc(this._bannerRepository) : super(BannersLoadingState()) {
    on<FetchBanners>((event, emit) async {
      emit(BannersLoadingState());
      try {
        _allItems = await _bannerRepository.getBannerImages();
        emit(BannersLoadedState(_allItems));
      } catch (e) {
        emit(BannersErrorState(e.toString()));
      }
    });
  }
}
