import 'package:flutter/material.dart';
import 'package:pesan_copi/cover.dart';
import 'package:pesan_copi/screen/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cover(),
    );
  }
}
