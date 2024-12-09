import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tumdi_1/models/business/business_model.dart';

@immutable
abstract class Businesstate extends Equatable {}

class BusinessLoadingState extends Businesstate {
  @override
  List<Object?> get props => [];
}

class BusinessLoadedState extends Businesstate {
  final List<BusinessModel> Business;
  BusinessLoadedState(this.Business);
  @override
  List<Object?> get props => [Business];
}

class BusinessErrorState extends Businesstate {
  final String error;
  BusinessErrorState(this.error);
  @override
  List<Object?> get props => [error];
}
