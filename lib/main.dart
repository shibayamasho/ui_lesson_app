import 'package:flutter/material.dart';
import 'package:ui_app/widgets/post_list.dart';
import 'package:ui_app/widgets/side_navigation_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI App',
      theme: ThemeData.light(),
      home: const AdminMobilePage(),
    );
  }
}

class AdminMobilePage extends StatelessWidget {
  const AdminMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavigation(),
          VerticalDivider(width: 1, thickness: 0), //区切り縦線
          Expanded(
            child: PostList(),
          ),
        ],
      ),
    );
  }
}
