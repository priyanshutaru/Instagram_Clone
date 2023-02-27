import 'package:flutter/material.dart';

class MySearchGrid extends StatefulWidget {
  const MySearchGrid({super.key});

  @override
  State<MySearchGrid> createState() => _MySearchGridState();
}

class _MySearchGridState extends State<MySearchGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
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
