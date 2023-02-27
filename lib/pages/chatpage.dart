// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/util/chatcard.dart';

class MyChatPage extends StatefulWidget {
  const MyChatPage({super.key});

  @override
  State<MyChatPage> createState() => _MyChatPageState();
}

class _MyChatPageState extends State<MyChatPage> {
  List Name = ["1", "2", "3", "4", "5", "6", "7", "8"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "_priyanshu1705",
          style: TextStyle(color: Colors.black),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Icon(Icons.video_call),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.grey[400],
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white54),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 0),
                          color: Colors.limeAccent[100],
                        ),
                      ),
                      Text("Leave a note")
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("Messages"),
                  Text(
                    "Requests",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
            // Container(
            //   height: 579,
            //   child: ListView.builder(
            //     scrollDirection: Axis.vertical,
            //     itemCount: Name.length,
            //     itemBuilder: (context, index) {
            //       return MychatCard();
            //     },
            //   ),
            // ),
            MychatCard(
              name: 'Kt',
            ),
            MychatCard(
              name: 'Priyanshu',
            ),
            MychatCard(
              name: 'Neel',
            ),
            MychatCard(
              name: 'Vipin Kumar',
            ),
            MychatCard(
              name: 'Krishna',
            ),

            MychatCard(
              name: 'Akshay Kallu',
            ),
            MychatCard(
              name: 'Rohit Saroj',
            ),

            MychatCard(
              name: 'Vipin Singh',
            ),

            MychatCard(
              name: 'Pradeep Saroj',
            ),

            MychatCard(
              name: 'Shubham Vish...',
            ),

            MychatCard(
              name: 'Priya',
            ),
          ],
        ),
      ),
    );
  }
}
