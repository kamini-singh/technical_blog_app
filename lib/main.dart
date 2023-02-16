import 'package:flutter/material.dart';
import 'package:technical_blog_app/menu_page.dart';
import 'package:technical_blog_app/news_page.dart';
import 'package:technical_blog_app/scholarships.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Technical Blog App',
      home: const MenuPage(),
      routes: {
        'newspage':(context) =>  const NewsPage(),
        'scholarships': (context) =>const Scholarships(),  
      }
    );
  }
}

