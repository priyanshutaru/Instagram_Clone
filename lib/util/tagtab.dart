import 'package:flutter/material.dart';

class MyTagTab extends StatefulWidget {
  const MyTagTab({super.key});

  @override
  State<MyTagTab> createState() => _MyTagTabState();
}

class _MyTagTabState extends State<MyTagTab> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 5,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 100,
              color: Colors.deepOrangeAccent,
            ),
          );
        });
  }
}
