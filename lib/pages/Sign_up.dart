import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/Custom%20Itmes/my_flutter_app_icons.dart';
import 'package:shared_backpack_user_app/pages/HomePage.dart';
import 'package:shared_backpack_user_app/pages/IntroPage.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(right: 30, top: 40),
                child: Container(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => IntroPage()));
                    },
                    color: Color(0xffE4C2B0),
                    iconSize: 60,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 60,
                  right: 50,
                ),
                child: Container(
                  height: 80,
                  width: 300,
                  child: Text(
                    'Sign up!',
                    style: TextStyle(color: Color(0xffE4C2B0), fontSize: 50),
                  ),
                ),
              ),
            )
          ]),

          Padding(
            padding: EdgeInsets.only(right: 50, bottom: 20),
            child: Text(
              'Sign up with one of the following',
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

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Theme(
              data: new ThemeData(
                primaryColor: Color(0xffE4C2B0),
              ),
              child: TextField(
                cursorColor: Color(0xffE4C2B0),
                style: TextStyle(color: Colors.white, fontSize: 20),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Theme(
              data: new ThemeData(
                primaryColor: Color(0xffE4C2B0),
              ),
              child: TextField(
                cursorColor: Color(0xffE4C2B0),
                style: TextStyle(color: Colors.white, fontSize: 20),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email-Id',
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Theme(
              data: new ThemeData(
                primaryColor: Color(0xffE4C2B0),
              ),
              child: TextField(
                cursorColor: Color(0xffE4C2B0),
                style: TextStyle(color: Colors.white, fontSize: 20),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Create your password',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 40),
            child: Theme(
              data: new ThemeData(
                primaryColor: Color(0xffE4C2B0),
              ),
              child: TextField(
                cursorColor: Color(0xffE4C2B0),
                style: TextStyle(color: Colors.white, fontSize: 20),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile No.',
                  labelStyle: TextStyle(color: Colors.white),
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
                  style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}
