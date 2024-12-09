import 'package:flutter/material.dart';

@immutable
abstract class JobsEvent {
  const JobsEvent();
}

class FetchJobs extends JobsEvent {}
