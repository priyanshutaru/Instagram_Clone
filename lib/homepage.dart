// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/post.dart';
import 'package:instagram_clone/pages/profile.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int current_index = 0;

  void ontap(int index) {
    setState(() {
      current_index = index;
    });
  }

  List Pages = [
    UserHomePage(),
    UserSearchPage(),
    UserPostPage(),
    UserReelsPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[current_index],
      bottomNavigationBar: BottomNavigationBar(
          onTap: ontap,
          currentIndex: current_index,

          // ignore: prefer_const_literals_to_create_immutables
          type: BottomNavigationBarType.fixed,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: "Add Post"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: "Reels"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
