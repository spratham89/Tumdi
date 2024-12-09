import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:tumdi_1/models/jobs/job_model.dart';

@immutable
abstract class JobsState extends Equatable {}

class JobsLoadingState extends JobsState {
  @override
  List<Object?> get props => [];
}

class JobsLoadedState extends JobsState {
  final List<JobModel> jobs;
  JobsLoadedState(this.jobs);
  @override
  List<Object?> get props => [jobs];
}

class JobsErrorState extends JobsState {
  final String error;
  JobsErrorState(this.error);
  @override
  List<Object?> get props => [error];
}
