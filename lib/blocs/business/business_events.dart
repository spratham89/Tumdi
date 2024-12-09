import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class BusinessEvent {
  const BusinessEvent();
}

class FetchBusiness extends BusinessEvent {}
