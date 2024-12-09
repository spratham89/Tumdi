import 'package:bloc/bloc.dart';
import 'package:tumdi_1/blocs/blogs/blogs_events.dart';
import 'package:tumdi_1/blocs/blogs/blogs_states.dart';

import 'package:tumdi_1/models/blogs/blogs_model.dart';
import 'package:tumdi_1/repo/blogs/blogrepository.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  final BlogsRepository _blogRepository;
  List<BlogsModel> _allItems = []; // Store all items locally for filtering

  BlogBloc(this._blogRepository) : super(BlogsLoadingState()) {
    on<FetchBlogs>((event, emit) async {
      emit(BlogsLoadingState());
      try {
        _allItems = await _blogRepository.getBlogsImages();
        emit(BlogsLoadedState(_allItems));
      } catch (e) {
        emit(BlogsErrorState(e.toString()));
      }
    });
  }
}
