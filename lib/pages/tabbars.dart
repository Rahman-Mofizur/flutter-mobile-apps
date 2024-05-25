import 'package:flutter/material.dart';
import 'package:flutter_apps_multiple/tabs/image_view.dart';
import 'package:flutter_apps_multiple/tabs/reels_view.dart';
import 'package:flutter_apps_multiple/tabs/tagged_view.dart';

class MyTabBars extends StatefulWidget {
  const MyTabBars({super.key});

  @override
  State<MyTabBars> createState() => _MyTabBarsState();
}

class _MyTabBarsState extends State<MyTabBars> {
// List of tabbar
  final List<Widget> tabs = [
    const Tab(
      icon: Icon(Icons.home),
    ),
    const Tab(
      icon: Icon(Icons.people),
    ),
    const Tab(
      icon: Icon(Icons.bookmark),
    ),
  ];

  final List<Widget> tabbarcontents = [
    const ImageView(),
    const ReelsView(),
    const TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Bar App"),
          backgroundColor: Colors.greenAccent[100],
          centerTitle: true,
        ),
        body: Column(
          children: [
            TabBar(tabs: tabs),
            Expanded(child: TabBarView(children: tabbarcontents)),
          ],
        ),
      ),
    );
  }
}
