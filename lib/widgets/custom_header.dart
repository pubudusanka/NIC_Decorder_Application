import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  
  CustomHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Color(0xFFA9DEF9),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}