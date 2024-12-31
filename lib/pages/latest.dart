import 'package:flutter/material.dart';
import 'package:tumdi_1/pages/mydrawer.dart';

class Latest extends StatefulWidget {
  const Latest({super.key});

  @override
  State<Latest> createState() => _LatestState();
}

class _LatestState extends State<Latest> with SingleTickerProviderStateMixin {
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
        backgroundColor: Color.fromRGBO(253, 231, 234, 1),
        title: const Text(
          'Latest',
          textAlign: TextAlign.left,
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Past'),
            Tab(text: 'Upcoming'),
          ],
        ),
      ),
      drawer: Mydrawer(),
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(253, 231, 234, 1)),
        child: TabBarView(
          controller: _tabController,
          children: [Center(), Center()],
        ),
      ),
    );
  }
}
