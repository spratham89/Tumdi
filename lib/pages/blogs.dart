import 'package:flutter/material.dart';
import 'package:tumdi_1/widget/rectanglelist.dart';

class Blogs extends StatelessWidget {
  const Blogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blogs'),
        centerTitle: true,
      ),
      body: const Rectanglelist());
  }
}