import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tumdi_1/models/gallery/gallery_model.dart';

@immutable
abstract class GalleryState extends Equatable {}

class GalleryLoadingState extends GalleryState {
  @override
  List<Object?> get props => [];
}

class GalleryLoadedState extends GalleryState {
  final List<GalleryModel> gallery;
  GalleryLoadedState(this.gallery);
  @override
  List<Object?> get props => [gallery];
}

class GalleryErrorState extends GalleryState {
  final String error;
  GalleryErrorState(this.error);
  @override
  List<Object?> get props => [error];
}
