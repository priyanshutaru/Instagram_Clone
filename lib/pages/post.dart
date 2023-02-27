import 'package:flutter/material.dart';
import 'package:instagram_clone/util/explorfield.dart';

class UserPostPage extends StatefulWidget {
  const UserPostPage({super.key});

  @override
  State<UserPostPage> createState() => _UserPostPageState();
}

class _UserPostPageState extends State<UserPostPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Post Your Photos"),
      ),
      body: MySearchGrid(),
    );
  }
}
