import 'package:flutter/material.dart';
import 'package:tumdi_1/pages/mydrawer.dart';

class Today extends StatefulWidget {
  const Today({super.key});

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    // Ensure the length matches the number of tabs or TabBarView children.
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // Clean up controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(253, 231, 234, 1),
          title: const Text(
            'Today',
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Birthday'),
              Tab(text: 'Anniversary'),
              Tab(text: 'Punyatithi'),
              Tab(text: 'Maran Mondh'),
              Tab(text: 'Prathana'),
            ],
          ),
        ),
        drawer: const Mydrawer(),
        body: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(253, 231, 234, 1)),
          child: TabBarView(
            controller: _tabController,
            children: [
              Center(child: Text('Tab 1 Content')),
              Center(child: Text('Tab 2 Content')),
              Center(child: Text('Tab 3 Content')),
              Center(child: Text('Tab 4 Content')),
              Center(child: Text('Tab 5 Content')),
            ],
          ),
        ));
  }
}
