import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class MatajiEvent {
  const MatajiEvent();
}

class FetchMataji extends MatajiEvent {}
