// To parse this JSON data, do
//
//     final postHere = postHereFromJson(jsonString);

import 'dart:convert';

PostHere postHereFromJson(String str) => PostHere.fromJson(json.decode(str));

String postHereToJson(PostHere data) => json.encode(data.toJson());

class PostHere {
  PostHere({
    required this.posts,
    required this.total,
    required this.skip,
    required this.limit,
  });

  List<Post> posts;
  int total;
  int skip;
  int limit;

  factory PostHere.fromJson(Map<String, dynamic> json) => PostHere(
        posts: List<Post>.from(json["posts"].map((x) => Post.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "posts": List<dynamic>.from(posts.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
      };
}

class Post {
  Post({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
    required this.tags,
    required this.reactions,
  });

  int id;
  String title;
  String body;
  int userId;
  List<String> tags;
  int reactions;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        title: json["title"],
        body: json["body"],
        userId: json["userId"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        reactions: json["reactions"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "body": body,
        "userId": userId,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "reactions": reactions,
      };
}
