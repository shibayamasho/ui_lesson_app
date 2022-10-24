import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_app/widgets/post_card.dart';

import '../models/post.dart';

class PostRed extends StatelessWidget {
  final Post post;
  const PostRed({required this.post, super.key});

  @override
  Widget build(BuildContext context) {
    return PostCard(
      post: post,
      colorPrimary: Colors.deepOrangeAccent,
      colorPositive: Colors.blueAccent,
      colorNegative: Colors.deepOrangeAccent,
      textReason: 'Pending Reason',
      textPositive: 'Publish',
      textNegative: 'Decline',
    );
  }
}
