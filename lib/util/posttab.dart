import 'package:flutter/material.dart';

class MyPostTab extends StatefulWidget {
  const MyPostTab({super.key});

  @override
  State<MyPostTab> createState() => _MyPostTabState();
}

class _MyPostTabState extends State<MyPostTab> {
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
              height: 100,
              color: Colors.deepPurple[100],
            ),
          );
        });
  }
}
