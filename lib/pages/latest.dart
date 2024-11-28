import 'package:flutter/material.dart';

class Latest extends StatelessWidget {
  const Latest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text:'Past'),
                Tab(text:'Upcoming'),
                
              ],
            ),
            title: const Text('Latest'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
            
            ],
          ),
        ),
      ),
    );;
  }
}