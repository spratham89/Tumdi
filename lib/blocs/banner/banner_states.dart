import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tumdi_1/models/banner/banner_model.dart';

@immutable
abstract class BannerState extends Equatable {}

class BannersLoadingState extends BannerState {
  @override
  List<Object?> get props => [];
}

class BannersLoadedState extends BannerState {
  final List<BannersModel> banners;
  BannersLoadedState(this.banners);
  @override
  List<Object?> get props => [banners];
}

class BannersErrorState extends BannerState {
  final String error;
  BannersErrorState(this.error);
  @override
  List<Object?> get props => [error];
}
