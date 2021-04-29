import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "HomePage",
          style: TextStyle(
              fontSize: 54,
              fontWeight: FontWeight.bold,
              color: Color(0xffd48a6f)),
        ),
      ),
    );
  }
}
