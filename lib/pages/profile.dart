// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone/util/posttab.dart';
import 'package:instagram_clone/util/reelstab.dart';
import 'package:instagram_clone/util/tagtab.dart';

import '../util/story.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  List Name = ["1", "2", "3", "4", "5", "6", "7", "8"];
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("_priyanshu1705"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.add_box_outlined),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.menu),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "371",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "Post",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "371",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "371",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Text("Priyanshu"),
              Text(
                "Computer Science Engineer",
                style: TextStyle(color: Colors.black26),
              ),
              Text(
                "https://in.linkedin.com/in/kumar-priyanshu",
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 120,
                    child: Center(child: Text("Edit Profile")),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black12, width: 1)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    child: Center(child: Text("Share Profile")),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black12, width: 1)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Center(child: Icon(Icons.person_add)),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black12, width: 1)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 105,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Name.length,
                    itemBuilder: (context, index) {
                      return MyStory(text: "Neel");
                    }),
              ),

              // ignore: prefer_const_literals_to_create_immutables
              TabBar(
                labelColor: Colors.black,
                dividerColor: Colors.black,
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.add_box,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.video_call,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.portrait_sharp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  MyPostTab(),
                  MyReelsTab(),
                  MyTagTab(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
