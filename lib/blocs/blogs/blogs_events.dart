import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class BlogEvent {
  const BlogEvent();
}

class FetchBlogs extends BlogEvent {}
