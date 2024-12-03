import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tumdi_1/blocs/search/search_blocs.dart';
import 'package:tumdi_1/blocs/search/search_events.dart';

class MySearchController {
  final BuildContext context;

  MySearchController({required this.context});
  List<String> searchable = [
    'Mehdi',
    'dadix',
    'mohamed',
    'amine',
    'hamada',
    'walid',
    'class',
    'rafik',
    'younes',
    'ahmed',
  ];
  onChange(String value) {
    value = value.toLowerCase();
    List<String> listOfNames =
        searchable.where((name) => name.toLowerCase().contains(value)).toList();
    if (value.isEmpty) {
      listOfNames = [];
      context.read<SearchBloc>().add(SearchingEvent(listOfNames));
    }
    context.read<SearchBloc>().add(SearchingEvent(listOfNames));
  }
}
