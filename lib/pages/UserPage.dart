import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/widgets/NavBar.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E2025),
        drawer: Drawer(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: NavBar(),
        )),
        appBar: AppBar(
            elevation: 0,
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            centerTitle: true,
            backgroundColor: Color(0xff1E2025),
            iconTheme: IconThemeData(
              color: Colors.white,
            )),
        body: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 40,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage("assets/sample_profile.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text(
                            "Aman Gupta",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Level 1 traveler",
                            style: TextStyle(
                                color: Color(0xffF5F5F5), fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stats(
                        head: "No. of trips taken",
                        number: "50",
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Stats(
                        head: "No. of posts",
                        number: "50",
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Stats(
                        head: "No. of friends",
                        number: "50",
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Stats(
                        head: "No. of trips taken",
                        number: "50",
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(right: 300),
              child: Text(
                "Pics",
                style: TextStyle(color: Color(0xffB4B4B7), fontSize: 40),
              ),
            ),
            SingleChildScrollView(
              child: Row(
                children: [],
              ),
            ),
          ],
        ));
  }

  Stats({
    String head,
    String number,
  }) =>
      Container(
          height: 150,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey)),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 7.5),
                width: 100,
                child: Text(
                  head,
                  style: TextStyle(color: Color(0xffB4B4B7), fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                number,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ],
          ));
}
