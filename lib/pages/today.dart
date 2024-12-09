import 'package:flutter/material.dart';
import 'package:tumdi_1/pages/mydrawer.dart';

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'Birthday'),
              Tab(text: 'Anniversary'),
              Tab(text: 'Punyatithi'),
              Tab(text: 'Maran Mondh'),
              Tab(text: 'Prathana'),
            ],
          ),
          TabBarView(
            children: [
              ListView.builder(
                shrinkWrap: true,
                //  crossAxisAlignment: CrossAxisAlignment.start,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    //child: Rectanglelist(height: 50.0, width: 100.0)
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
