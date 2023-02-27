import 'package:flutter/material.dart';

class MyReelsTab extends StatefulWidget {
  const MyReelsTab({super.key});

  @override
  State<MyReelsTab> createState() => _MyReelsTabState();
}

class _MyReelsTabState extends State<MyReelsTab> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 10,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 120,
              color: Colors.blue[200],
            ),
          );
        });
  }
}
