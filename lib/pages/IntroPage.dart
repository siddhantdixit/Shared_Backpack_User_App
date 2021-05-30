import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/pages/Log_in.dart';
import 'package:shared_backpack_user_app/pages/Sign_up.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/IntroPage.jpg"), fit: BoxFit.fill)),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70, left: 20),
              height: 200,
              width: 500,
              child: Text(
                "Shared Backpack",
                style: TextStyle(
                    color: Colors.black, fontSize: 70, fontFamily: 'Ariel'),
              ),
            ),
            const SizedBox(
              height: 480,
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => LogIn()));
                        },
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(400),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Center(
                              child: Text(
                            "Log in",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                        ),
                      ),
                    )),
                const SizedBox(
                  width: 80,
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SignUp()));
                        },
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Center(
                            child: Text(
                              "Sign up",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
