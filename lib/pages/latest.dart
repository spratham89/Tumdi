import 'package:flutter/material.dart';
import 'package:tumdi_1/pages/mydrawer.dart';

class Latest extends StatefulWidget {
  const Latest({super.key});

  @override
  State<Latest> createState() => _LatestState();
}

class _LatestState extends State<Latest> with SingleTickerProviderStateMixin  {
   late TabController _tabController;

   @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
     // title: Text('Nested Scroll Example'),
      bottom:  TabBar(
        controller: _tabController,
        tabs: [
          Tab(text: 'Past'),
                Tab(text: 'Upcoming'),
        ],
      ),
    ),
      body:  TabBarView(
          controller: _tabController,
        children: [
          Center(),Center()
        
        ],
      ),
    );
  }
}
