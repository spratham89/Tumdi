import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UserEvent {
  const UserEvent();
}

class FetchItems extends UserEvent {}

class SearchItems extends UserEvent {
  final String query;
  SearchItems(this.query);
}
