import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final List tabBarOptions;
  const MyTabBar({Key? key, required this.tabBarOptions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          labelColor: Colors.black38,
          unselectedLabelColor: Colors.grey,
          unselectedLabelStyle: const TextStyle(
            fontSize: 14,
            color: Colors.grey
          ),
          tabs: [
          Tab(
            child: Text(
              tabBarOptions[0][0],
            ),
          ),
          Tab(
            child: Text(
              tabBarOptions[1][0],
            ),
          ),
          Tab(
            child: Text(
              tabBarOptions[2][0],
            ),
          ),
        ]
        ),
        Expanded(child: TabBarView(
          children: [
            tabBarOptions[0][1],
            tabBarOptions[1][1],
            tabBarOptions[2][1],
          ],
        ))
      ],
    );

  }
}
