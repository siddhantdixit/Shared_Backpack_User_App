import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/pages/HomePage.dart';

class NavBar extends StatelessWidget {
  final padding = EdgeInsets.all(20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
          color: Colors.orangeAccent[100],
          child: ListView(
            padding: padding,
            children: <Widget>[
              const SizedBox(
                height: 48,
              ),
              buildMenuItem(
                text: 'Home',
                icon: Icons.home,
                // onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'People',
                icon: Icons.people,
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'Support',
                icon: Icons.support,
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'Settings',
                icon: Icons.settings,
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

  // selectedItem(BuildContext context, int index) {
  //   switch (index) {
  //     case 0:
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => HomePage(),
  //       ));
  //   }
  // }
}
