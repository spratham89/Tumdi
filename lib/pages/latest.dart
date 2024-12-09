import 'package:flutter/material.dart';
import 'package:tumdi_1/pages/mydrawer.dart';

class Latest extends StatelessWidget {
  const Latest({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'Past'),
              Tab(text: 'Upcoming'),
            ],
          ),
          TabBarView(
            children: [
              ListView.builder(
                shrinkWrap: true,
                //  crossAxisAlignment: CrossAxisAlignment.start,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    //   child: Rectanglelist(height: 100.0, width: 100.0),
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
