import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_app/widgets/post_card.dart';

import '../models/post.dart';

class PostGreen extends StatelessWidget {
  final Post post;
  const PostGreen({required this.post, super.key});

  @override
  Widget build(BuildContext context) {
    return PostCard(
      post: post,
      colorPrimary: Colors.greenAccent,
      colorPositive: Colors.greenAccent,
      colorNegative: Colors.blueAccent,
      textReason: 'Report Details',
      textPositive: 'Keep',
      textNegative: 'Archive',
    );
  }
}
