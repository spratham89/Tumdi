import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class GalleryEvent {
  const GalleryEvent();
}

class FetchGallery extends GalleryEvent {}
