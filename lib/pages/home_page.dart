import 'package:flutter/material.dart';
import 'package:nft_ui/components/app_bar.dart';
import 'package:nft_ui/components/bottom_bar.dart';
import 'package:nft_ui/components/tab_bar.dart';
import 'package:nft_ui/tabs/recent_tab.dart';
import 'package:nft_ui/tabs/top_tab.dart';
import 'package:nft_ui/tabs/trending_tab.dart';
import 'package:nft_ui/util/glass_box.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List tabOptions = [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()]
  ];

  int _currentButtonIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentButtonIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentButtonIndex,
            onIndexChanged: _handleIndexChanged,
          ),
        ),
        extendBody: true,
        body: ListView(
          children: [
            // App Bar
            MyAppBar(),
            // Tab Bar
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabBarOptions: tabOptions
              ),
            )
            // Bottom Bar
          ],
        ),
      ),
    );
  }
}
