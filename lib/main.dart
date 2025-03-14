import 'package:custom_paint_example/view/clip_rect_example.dart';
import 'package:custom_paint_example/view/shapes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClipRectExample(),
    );
  }
}
