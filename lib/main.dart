import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/pages/IntroPage.dart';

import 'package:shared_backpack_user_app/pages/Log_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: IntroPage(),
    );
  }
}
