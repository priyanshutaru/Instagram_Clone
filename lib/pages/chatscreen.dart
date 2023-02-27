// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/profile.dart';

class MychatScreen extends StatefulWidget {
  const MychatScreen({super.key});

  @override
  State<MychatScreen> createState() => _MychatScreenState();
}

class _MychatScreenState extends State<MychatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.deepPurple[200],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("Priyanshu"),
                Text(
                  "_priyanshu1705",
                  style: TextStyle(color: Colors.black26, fontSize: 10),
                ),
              ],
            ),
          ],
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Icon(
            Icons.call,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.video_call_sharp,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
            ),
          ),
          Text(
            "Priyanshu",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "_priyanshu1705 .",
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
              Text(
                " Instagram",
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "36 followers .",
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
              Text(
                " 20 Posts",
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "You follow each other on instagram",
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "You both follow _priyanshu1705 and  1 other",
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            width: 95,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white, primary: Colors.white12),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserProfilePage(),
                  ),
                );
              },
              child: Text(
                "View Profile",
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
