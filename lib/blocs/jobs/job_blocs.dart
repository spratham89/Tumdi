import 'package:bloc/bloc.dart';
import 'package:tumdi_1/blocs/jobs/job_events.dart';
import 'package:tumdi_1/blocs/jobs/job_states.dart';
import 'package:tumdi_1/models/jobs/job_model.dart';
import 'package:tumdi_1/repo/jobs/jobrepository.dart';

class JobsBloc extends Bloc<JobsEvent, JobsState> {
  final JobRepository _jobsRepository;
  List<JobModel> _allItems = []; // Store all items locally for filtering

  JobsBloc(this._jobsRepository) : super(JobsLoadingState()) {
    on<FetchJobs>((event, emit) async {
      emit(JobsLoadingState());
      try {
        _allItems = await _jobsRepository.getJobsImages();
        emit(JobsLoadedState(_allItems));
      } catch (e) {
        emit(JobsErrorState(e.toString()));
      }
    });
  }
}
