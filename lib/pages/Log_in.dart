import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/pages/HomePage.dart';
import 'package:shared_backpack_user_app/pages/Sign_up.dart';
import 'package:shared_backpack_user_app/Custom Itmes/my_flutter_app_icons.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Padding(padding: EdgeInsets.only(top: 80)),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Hello There.',
            style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
              color: Color(0xffE4C2B0),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 50, bottom: 20),
          child: Text(
            'Log in with one of the following',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),

//Authorization buttons

        Padding(
          padding: EdgeInsets.only(
            left: 40,
            bottom: 5,
          ),
          child: Theme(
            data: new ThemeData(
              primaryColor: Colors.white,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 85,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Icon(
                      Icons_1.Google_icon,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 85,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Icon(
                      Icons_1.apple_logo,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.white,
                  indent: 30,
                  endIndent: 10,
                ),
              ),
              Text(
                "Or",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Expanded(
                child: Divider(
                  color: Colors.white,
                  indent: 10,
                  endIndent: 30,
                ),
              ),
            ],
          ),
        ),
//User name and password//

        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Theme(
            data: new ThemeData(
              primaryColor: Color(0xffE4C2B0),
            ),
            child: TextField(
              cursorColor: Color(0xffE4C2B0),
              style: TextStyle(color: Colors.white, fontSize: 25),
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email-id:',
                labelStyle: TextStyle(color: Colors.white, fontSize: 30),
                hintText: 'Enter valid email address',
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Theme(
            data: new ThemeData(
              primaryColor: Color(0xffE4C2B0),
            ),
            child: TextField(
              cursorColor: Color(0xffE4C2B0),
              style: TextStyle(color: Colors.white, fontSize: 30),
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password:',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                hintText: 'Enter the password',
              ),
            ),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Forget Password?',
              style: TextStyle(color: Color(0xffE4C2B0)),
            )),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Color(0xffE4C2B0),
              borderRadius: BorderRadius.circular(40),
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
          ),
        ),

        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SignUp()));
          },
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SignUp()));
            },
            child: Text(
              'New user? Create account now',
              style: TextStyle(
                color: Color(0xffE4C2B0),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
