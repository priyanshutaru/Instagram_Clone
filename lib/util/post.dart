// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  const MyPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.deepOrange[50],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Priyanshu",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.menu),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.blueGrey,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.chat_bubble_outline_sharp),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.send),
                ],
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.bookmark),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Liked by"),
              SizedBox(
                width: 5,
              ),
              Text(
                "Taru Dixit",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Text("and"),
              SizedBox(
                width: 5,
              ),
              Text(
                "Others",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 3, 8, 8),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Priyanshu",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Text("Good Time Came Soon"),
            ],
          ),
        )
      ],
    );
  }
}
