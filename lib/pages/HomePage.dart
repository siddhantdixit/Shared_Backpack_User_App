import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/widgets/NavBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: NavBar(),
      appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(color: Color(0xffE4C2B0), fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(
            color: Color(0xffE4C2B0),
          )),
    );
  }
}
