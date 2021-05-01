import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/widgets/NavBar.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: NavBar(),
      appBar: AppBar(
          title: Text(
            "Support",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffE4C2B0),
          iconTheme: IconThemeData(color: Colors.black)),
    );
  }
}
