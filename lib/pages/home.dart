// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/chatpage.dart';
import 'package:instagram_clone/util/post.dart';
import 'package:instagram_clone/util/story.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  List Name = ["1", "2", "3", "4", "5", "6", "7", "8"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: TextStyle(color: Colors.black),
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  icon: Icon(
                    Icons.chat,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyChatPage()),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 105,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Name.length,
                itemBuilder: (context, index) {
                  return MyStory(text: "Neel");
                }),
          ),
          Container(
            height: 550,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Name.length,
              itemBuilder: (context, index) {
                return MyPost();
              },
            ),
          ),
        ],
      ),
    );
  }
}
