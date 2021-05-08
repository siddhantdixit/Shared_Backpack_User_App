import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/pages/HomePage.dart';
import 'package:shared_backpack_user_app/pages/Sign_up.dart';
import 'package:auth_buttons/auth_buttons.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Container(
          height: 500,
          width: 700,
          padding: EdgeInsets.only(
            top: 150,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
          ),
          child: Center(
              child: Text(
            'Hello There.',
            style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
              color: Color(0xffE4C2B0),
            ),
          )),
        ),
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
              style: TextStyle(color: Color(0xffE4C2B0)),
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
                labelStyle: TextStyle(color: Color(0xffE4C2B0)),
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
              style: TextStyle(color: Color(0xffE4C2B0)),
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                labelStyle: TextStyle(color: Color(0xffE4C2B0)),
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
                'Log in',
                style: TextStyle(fontSize: 20, color: Colors.black),
              )),
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Text('Or Log in With'),
        // Row(
        //   children: [
        //     GoogleAuthButton(
        //       onPressed: () {},
        //       text: 'Log in',
        //       darkMode: true,
        //     ),
        //     FacebookAuthButton(
        //       onPressed: () {},
        //       text: 'Log in',
        //     ),
        //     TwitterAuthButton(
        //       onPressed: () {},
        //       text: 'Log in',
        //     )
        //   ],
        // ),
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
              'New user? Create accoount now',
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
