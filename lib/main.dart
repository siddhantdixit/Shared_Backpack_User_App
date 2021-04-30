import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/widgets/NavBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Color(0xffE4C2B0),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );
}
