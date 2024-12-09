import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class BannerEvent {
  const BannerEvent();
}

class FetchBanners extends BannerEvent {}
