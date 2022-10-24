import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/post.dart';

class PostCard extends StatelessWidget {
  final Post post = Post(message: 'test message', name: 'test name');
  PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Card(
        elevation: 8,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            ListTile(
              title: Text(post.name),
              subtitle: const Text('2 min ago'),
              leading: ClipOval(
                child: Container(
                  color: Colors.blue, //
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      post.name.substring(0, 1),
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 72),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 4),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(post.message),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.blue, //
                          width: 2,
                        ),
                      ),
                    ),
                    child: Text(
                      'text reason', //
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blueGrey,
                      ),
                      onPressed: (() {}),
                      child: Text("negative button"), //
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.redAccent,
                      ),
                      onPressed: (() {}),
                      child: Text("positive button"), //
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
