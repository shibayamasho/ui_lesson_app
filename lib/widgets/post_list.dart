import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_app/models/post.dart';
import 'package:ui_app/widgets/post_card.dart';
import 'post_header.dart';

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    final Post post1 = Post(name: "post name1", message: 'post message 1');
    final Post post2 = Post(name: "post name2", message: 'post message 2');
    final Post post3 = Post(name: "山田 太郎", message: 'みなさんこんにちは');
    return Container(
      padding: EdgeInsets.only(top: 48),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListView(
              children: [
                PostHeader(),
                PostCard(post: post1),
                PostCard(post: post2),
                PostCard(post: post3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
