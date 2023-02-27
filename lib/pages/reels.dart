import 'package:flutter/material.dart';

class UserReelsPage extends StatefulWidget {
  const UserReelsPage({super.key});

  @override
  State<UserReelsPage> createState() => _UserReelsPageState();
}

class _UserReelsPageState extends State<UserReelsPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const Center(child: Text("Reels Page")),
    );
  }
}
