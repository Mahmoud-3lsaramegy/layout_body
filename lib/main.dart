import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:layout_body/home_desktop.dart';
import 'package:layout_body/home_moblie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Moblie();
        } else {
          return Desktop();
        }
      }),
    );
  }
}
