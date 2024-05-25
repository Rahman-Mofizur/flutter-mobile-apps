import 'package:flutter/material.dart';
import 'package:flutter_apps_multiple/tabs/image_view.dart';
import 'package:flutter_apps_multiple/tabs/reels_view.dart';
import 'package:flutter_apps_multiple/tabs/tagged_view.dart';

class MyInsta extends StatefulWidget {
  const MyInsta({super.key});

  @override
  State<MyInsta> createState() => _MyInstaState();
}

class _MyInstaState extends State<MyInsta> {
  //  List of tabBars

  final List<Widget> mytabs = [
    // Feed tab
    const Tab(
      icon: Icon(Icons.image),
    ),
    //  Reels tab
    const Tab(
      icon: Icon(Icons.video_collection),
    ),
    // Tagged tab
    const Tab(
      icon: Icon(Icons.bookmark),
    ),
  ];

  // List of TabBar View
  final List<Widget> tabbarviews = [
    const ImageView(),
    const ReelsView(),
    const TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            // Upper Section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "3553",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'lib/images/image.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "2.5K",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            const Column(
              children: [
                Text(
                  'Mohammed Eiman | Developer',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Flutter • Programmer • UI/UX',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey),
                ),
                InkWell(
                  child: Text(
                    'youtube.com/@muslimbroone',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.blue),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            // Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text("Edit Profile"),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // Tab Bar

            TabBar(
              tabs: mytabs,
            ),

            // Tab Bar View

            SizedBox(
              // height: double.infinity,
              height: 2500,
              child: TabBarView(children: tabbarviews),
            ),
          ],
        ),
      ),
    );
  }
}
