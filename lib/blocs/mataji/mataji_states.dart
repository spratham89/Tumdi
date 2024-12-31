import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tumdi_1/models/mataji/mataji_model.dart';

@immutable
abstract class MatajiState extends Equatable {}

class MatajiLoadingState extends MatajiState {
  @override
  List<Object?> get props => [];
}

class MatajiLoadedState extends MatajiState {
  final List<MatajiModel> Mataji;
  MatajiLoadedState(this.Mataji);
  @override
  List<Object?> get props => [Mataji];
}

class MatajiErrorState extends MatajiState {
  final String error;
  MatajiErrorState(this.error);
  @override
  List<Object?> get props => [error];
}
