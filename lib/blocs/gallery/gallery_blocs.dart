import 'package:bloc/bloc.dart';
import 'package:tumdi_1/blocs/gallery/gallery_events.dart';
import 'package:tumdi_1/blocs/gallery/gallery_states.dart';
import 'package:tumdi_1/models/gallery/gallery_model.dart';
import 'package:tumdi_1/repo/gallery/galleryrepository.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  final GalleryRepository _galleryRepository;
  List<GalleryModel> _allItems = []; // Store all items locally for filtering

  GalleryBloc(this._galleryRepository) : super(GalleryLoadingState()) {
    on<FetchGallery>((event, emit) async {
      emit(GalleryLoadingState());
      try {
        _allItems = await _galleryRepository.getGalleryImages();
        emit(GalleryLoadedState(_allItems));
      } catch (e) {
        emit(GalleryErrorState(e.toString()));
      }
    });
  }
}
