import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tumdi_1/models/blogs/blogs_model.dart';

@immutable
abstract class BlogState extends Equatable {}

class BlogsLoadingState extends BlogState {
  @override
  List<Object?> get props => [];
}

class BlogsLoadedState extends BlogState {
  final List<BlogsModel> blogs;
  BlogsLoadedState(this.blogs);
  @override
  List<Object?> get props => [blogs];
}

class BlogsErrorState extends BlogState {
  final String error;
  BlogsErrorState(this.error);
  @override
  List<Object?> get props => [error];
}
