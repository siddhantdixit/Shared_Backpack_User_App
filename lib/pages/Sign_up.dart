import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/pages/HomePage.dart';
import 'package:shared_backpack_user_app/pages/Log_in.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, right: 300),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LogIn()));
              },
              color: Color(0xffE4C2B0),
              iconSize: 60,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 250, top: 40),
            child: Text(
              'Hi!',
              style: TextStyle(
                  color: Color(0xffE4C2B0),
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 190, left: 50, top: 10, bottom: 20),
            child: Text(
              'Create an account',
              style: TextStyle(
                  color: Color(0xffE4C2B0),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: Theme(
              data: new ThemeData(
                primaryColor: Color(0xffE4C2B0),
              ),
              child: TextField(
                cursorColor: Color(0xffE4C2B0),
                style: TextStyle(color: Color(0xffE4C2B0)),
                obscureText: false,
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Color(0xffE4C2B0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: Theme(
              data: new ThemeData(
                primaryColor: Color(0xffE4C2B0),
              ),
              child: TextField(
                cursorColor: Color(0xffE4C2B0),
                style: TextStyle(color: Color(0xffE4C2B0)),
                obscureText: false,
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Email-Id',
                  labelStyle: TextStyle(color: Color(0xffE4C2B0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: Theme(
              data: new ThemeData(
                primaryColor: Color(0xffE4C2B0),
              ),
              child: TextField(
                cursorColor: Color(0xffE4C2B0),
                style: TextStyle(color: Color(0xffE4C2B0)),
                obscureText: false,
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color(0xffE4C2B0)),
                  hintText: 'Create your password',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 40),
            child: Theme(
              data: new ThemeData(
                primaryColor: Color(0xffE4C2B0),
              ),
              child: TextField(
                cursorColor: Color(0xffE4C2B0),
                style: TextStyle(color: Color(0xffE4C2B0)),
                obscureText: false,
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Mobile No.',
                  labelStyle: TextStyle(color: Color(0xffE4C2B0)),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Color(0xffE4C2B0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
          ),
          TextButton(
              onPressed: () {},
              child: Text('Already a member? Log in',
                  style: TextStyle(color: Color(0xffE4C2B0))))
        ],
      ),
    );
  }
}
