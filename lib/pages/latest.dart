import 'package:flutter/material.dart';

class Latest extends StatelessWidget {
  const Latest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
   
      body: DefaultTabController(
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
          body:  TabBarView(
            children: [
             Expanded(
        child: ListView.builder(
            shrinkWrap: true,
        //  crossAxisAlignment: CrossAxisAlignment.start,
         itemCount: 3,
          itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(width:100.0,height: 200.0,child: Container(decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),)),
        );
          },
        ),
      ),
              Icon(Icons.directions_transit),
            
            ],
          ),
        ),
      ),
    );;
  }
}