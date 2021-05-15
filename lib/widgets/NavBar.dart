import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/pages/HomePage.dart';
import 'package:shared_backpack_user_app/pages/Notificatios.dart';
import 'package:shared_backpack_user_app/pages/People.dart';
import 'package:shared_backpack_user_app/pages/Settings.dart';
import 'package:shared_backpack_user_app/pages/Support.dart';
import 'package:shared_backpack_user_app/userprofile/Profile.dart';

class NavBar extends StatelessWidget {
  final name = 'Aman Gupta';
  final email = 'amangpt@gmail.com';
  final urlImage = '';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
          color: Color(0xffE4C2B0),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            children: <Widget>[
              buildHeader(
                name: name,
                email: email,
                urlImage: urlImage,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Userprofile(),
                )),
              ),
              const SizedBox(height: 30),
              Divider(
                color: Colors.black54,
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                height: 48,
              ),
              buildMenuItem(
                text: 'Home',
                icon: Icons.home,
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'People',
                icon: Icons.people,
                onClicked: () => selectedItem(context, 1),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'Support',
                icon: Icons.support,
                onClicked: () => selectedItem(context, 2),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'Settings',
                icon: Icons.settings,
                onClicked: () => selectedItem(context, 3),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'Notifications',
                icon: Icons.notifications,
                onClicked: () => selectedItem(context, 4),
              ),
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
                color: Colors.black54,
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(text: 'Log Out', icon: Icons.exit_to_app),
            ],
          )),
    );
  }

  Widget buildMenuItem({
    String text,
    IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.black;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
        size: 30,
      ),
      title: Text(text, style: TextStyle(color: color, fontSize: 22)),
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
        padding: EdgeInsets.only(
          top: 60,
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
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                SizedBox(height: 4),
                Text(
                  email,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      );
}
