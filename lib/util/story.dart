import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  final String text;
  const MyStory({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
