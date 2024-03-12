import 'package:flutter/material.dart';

class Like extends StatelessWidget {
  const Like({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'LIKE',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
