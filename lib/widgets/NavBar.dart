import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/pages/HomePage.dart';
import 'package:shared_backpack_user_app/pages/IntroPage.dart';
import 'package:shared_backpack_user_app/pages/Log_in.dart';
import 'package:shared_backpack_user_app/pages/Notificatios.dart';
import 'package:shared_backpack_user_app/pages/People.dart';
import 'package:shared_backpack_user_app/pages/Settings.dart';
import 'package:shared_backpack_user_app/pages/Support.dart';
import 'package:shared_backpack_user_app/pages/UserPage.dart';
import 'package:shared_backpack_user_app/userprofile/Profile.dart';

class NavBar extends StatelessWidget {
  final name = 'Aman Gupta';
  final email = 'amangpt@gmail.com';
  final urlImage = '';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
          color: Color(0xff2E3039),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            children: <Widget>[
              // buildHeader(
              //     name: name,
              //     email: email,
              //     urlImage: urlImage,
              //     onClicked: () {
              //       Navigator.push(
              //           context, MaterialPageRoute(builder: (_) => UserPage()));
              //     }),

              //the header
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => UserPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage("assets/sample_profile.png"),
                          backgroundColor: Colors.black,
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Aman Gupta",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "aman@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              buildHeader(
                name: name,
                email: email,
                urlImage: urlImage,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Userprofile(),
                )),

              ),
              const SizedBox(height: 30),

              //between body
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.white60,
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                height: 48,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 65),
                child: buildMenuItem(
                  text: 'Home',
                  onClicked: () => selectedItem(context, 0),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: buildMenuItem(
                  text: 'Community',
                  onClicked: () => selectedItem(context, 1),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: buildMenuItem(
                  text: 'Support',
                  onClicked: () => selectedItem(context, 2),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: buildMenuItem(
                  text: 'Settings',
                  onClicked: () => selectedItem(context, 3),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: buildMenuItem(
                  text: 'Notifications',
                  onClicked: () => selectedItem(context, 4),
                ),
              ),
              const SizedBox(height: 100),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'Profile',
                icon: Icons.person,
                onClicked: () => selectedItem(context, 5),
              ),
              const SizedBox(height: 200),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.white60,
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.logout,
                    size: 50,
                    color: Colors.white,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => IntroPage()));
                      },
                      child: Text(
                        "Log out",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      )),
                ]),
              )
            ],
          )),
    );
  }

  Widget buildMenuItem({
    String text,
    IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Color(0xffB4B4B7);

    return ListTile(
      // leading: Icon(
      //   icon,
      //   color: color,
      //   size: 30,
      // ),
      title: Text(text, style: TextStyle(color: color, fontSize: 35)),
      onTap: onClicked,
    );
  }

  selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => People(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Support(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Settings(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Notifications(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Userprofile(),
        ));
        break;
    }
  }

  buildHeader(
          {String name,
          String email,
          String urlImage,
          VoidCallback onClicked}) =>
      Container(
        margin: EdgeInsets.only(
          top: 70,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(urlImage),
              backgroundColor: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                SizedBox(height: 4),
                Text(
                  email,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      );
}
