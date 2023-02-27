// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/api_services/api.dart';
import 'package:instagram_clone/api_services/model.dart';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Fetch Here"),
      ),
      body: FutureBuilder(
          future: getPost(),
          builder: (context, AsyncSnapshot shanpshot) {
            if (!shanpshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<Post> post = [shanpshot.data];
              return ListView.builder(
                  itemCount: post.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Text(post[index].title.toString()),
                      ],
                    );
                  });
            }
          }),
    );
  }
}
