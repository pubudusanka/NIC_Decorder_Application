import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;

  HeaderWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 80, left: 20, right: 20), // Top padding set to 80
      decoration: BoxDecoration(
        color: Color(0xFFA9DEF9),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter, // Align text to the bottom
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Ensure text stays centered
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis, // Ensure the text does not wrap
              ),
            ),
          ],
        ),
      ),
    );
  }
}
