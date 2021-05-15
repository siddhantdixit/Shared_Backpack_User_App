import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shared_backpack_user_app/userprofile/profilepage.dart';
import 'package:shared_backpack_user_app/widgets/NavBar.dart';

class Userprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'User Profile',
              home: ProfileFirst(),
            );
          },
        );
      },
    );
  }
}

class ProfileFirst extends StatefulWidget {
  ProfileFirst({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileFirstState createState() => _ProfileFirstState();
}

class _ProfileFirstState extends State<ProfileFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE4C2B0),
      drawer: NavBar(),
      appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffE4C2B0),
          iconTheme: IconThemeData(color: Colors.black)),
      body: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            color: Colors.grey[900],
            height: 40 * SizeConfig.heightMultiplier,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                  top: 3 * SizeConfig.heightMultiplier),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 11 * SizeConfig.heightMultiplier,
                        width: 22 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://i.pinimg.com/originals/1c/a5/40/1ca5409420d4435285850c5744cb76e5.jpg"))),
                      ),
                      SizedBox(
                        width: 11 * SizeConfig.widthMultiplier,
                      ),
                      SizedBox(
                        width: 5 * SizeConfig.widthMultiplier,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Ankit Hinge",
                            style: TextStyle(
                                color: Color(0xffE4C2B0),
                                fontSize: 3 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 0 * SizeConfig.heightMultiplier,
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "https://icons-for-free.com/iconfiles/png/512/fb+icon-1320183899414660008.png",
                                    height: 7 * SizeConfig.heightMultiplier,
                                    width: 7 * SizeConfig.widthMultiplier,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 7 * SizeConfig.widthMultiplier,
                              ),
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "https://icons-for-free.com/iconfiles/png/512/twitter-1319971786612543372.png",
                                    height: 7 * SizeConfig.heightMultiplier,
                                    width: 7 * SizeConfig.widthMultiplier,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 7 * SizeConfig.widthMultiplier,
                              ),
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/1025px-Instagram-Icon.png",
                                    height: 5 * SizeConfig.heightMultiplier,
                                    width: 5 * SizeConfig.widthMultiplier,
                                  ),
                                  SizedBox(
                                    width: 2 * SizeConfig.widthMultiplier,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3 * SizeConfig.heightMultiplier,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "500",
                            style: TextStyle(
                                color: Colors.deepOrangeAccent[700],
                                fontSize: 2.5 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Friends",
                            style: TextStyle(
                              color: Color(0xffE4C2B0),
                              fontSize: 1.9 * SizeConfig.textMultiplier,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "11",
                            style: TextStyle(
                                color: Colors.deepOrangeAccent[700],
                                fontSize: 2.5 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Teams",
                            style: TextStyle(
                              color: Color(0xffE4C2B0),
                              fontSize: 1.9 * SizeConfig.textMultiplier,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "80",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.deepOrangeAccent[700],
                                fontSize: 2.5 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Destinations",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffE4C2B0),
                              fontSize: 1.9 * SizeConfig.textMultiplier,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3 * SizeConfig.heightMultiplier,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffE4C2B0)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "EDIT PROFILE",
                            style: TextStyle(
                                color: Color(0xffE4C2B0),
                                fontSize: 1.8 * SizeConfig.textMultiplier),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 33 * SizeConfig.heightMultiplier),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xffE4C2B0),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  )),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 3 * SizeConfig.heightMultiplier),
                        child: Text(
                          "My Albums",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 2.5 * SizeConfig.textMultiplier),
                        ),
                      ),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      Container(
                        height: 37 * SizeConfig.heightMultiplier,
                        width: 42.5 * SizeConfig.heightMultiplier,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            _myAlbumCard(
                                "https://static.toiimg.com/photo/msid-76420833,width-96,height-65.cms",
                                "https://travel.usnews.com/static-travel/images/destinations/73/gettyimages-462922955_445x280.jpg",
                                "https://images.theconversation.com/files/271810/original/file-20190430-136810-yhoyzj.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip",
                                "https://travel.usnews.com/static-travel/images/destinations/73/gettyimages-462922955_445x280.jpg",
                                "+18",
                                "Portugal"),
                            _myAlbumCard(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHVjpMi4RjrVqjy5zgSlXB0D558-ARM7-aAg&usqp=CAU",
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJcT3Klpy3YpnUc8T3A5Cu4-ikzgDWxFLfzw&usqp=CAU",
                                "https://images.theconversation.com/files/271810/original/file-20190430-136810-yhoyzj.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip",
                                "https://travel.usnews.com/static-travel/images/destinations/73/gettyimages-462922955_445x280.jpg",
                                "+248",
                                "Istanbul"),
                            _myAlbumCard(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzq5OMXCKBCkIYtC8O5J-GYSGH06IGapK0fQ&usqp=CAU",
                                "https://mydivinevacation.com/wp-content/uploads/2019/01/Romantic-Travel.jpg",
                                "https://images.theconversation.com/files/271810/original/file-20190430-136810-yhoyzj.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip",
                                "https://travel.usnews.com/static-travel/images/destinations/73/gettyimages-462922955_445x280.jpg",
                                "+118",
                                "Spain"),
                            SizedBox(
                              width: 10 * SizeConfig.widthMultiplier,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Favourite places",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 2.2 * SizeConfig.textMultiplier),
                            ),
                            Spacer(),
                            Text(
                              "View All",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 1.7 * SizeConfig.textMultiplier),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      Container(
                        height: 20 * SizeConfig.heightMultiplier,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            _favoriteCard(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiNYJz_0aKz92YhqV2mckEi_TktSVJtI_VQ&usqp=CAU"),
                            _favoriteCard(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShg0PCdhfH4L7qOHiCruP81hDrF80pIHFRwA&usqp=CAU"),
                            _favoriteCard(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBIIFXubuk_u_QPIMY4VmTAaupePAm54SwvA&usqp=CAU"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _myAlbumCard(String asset1, String asset2, String asset3, String asset4,
      String more, String name) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Card(
        elevation: 12,
        child: Container(
          height: 2.3 * SizeConfig.imageSizeMultiplier,
          width: 60 * SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(2.0),
              border: Border.all(color: Colors.grey, width: 0.2)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          asset1,
                          height: 27 * SizeConfig.imageSizeMultiplier,
                          width: 27 * SizeConfig.imageSizeMultiplier,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          asset2,
                          height: 27 * SizeConfig.imageSizeMultiplier,
                          width: 27 * SizeConfig.imageSizeMultiplier,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          asset3,
                          height: 27 * SizeConfig.imageSizeMultiplier,
                          width: 27 * SizeConfig.imageSizeMultiplier,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Spacer(),
                      Stack(
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              asset4,
                              height: 27 * SizeConfig.imageSizeMultiplier,
                              width: 27 * SizeConfig.imageSizeMultiplier,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: 27 * SizeConfig.imageSizeMultiplier,
                              width: 27 * SizeConfig.imageSizeMultiplier,
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Center(
                                child: Text(
                                  more,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 2.5 * SizeConfig.textMultiplier,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 10.0, top: 2 * SizeConfig.heightMultiplier),
                  child: Text(
                    name,
                    style: TextStyle(
                        color: Color(0xffE4C2B0),
                        fontSize: 2 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _favoriteCard(String s) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Card(
        elevation: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(2.0),
          child: Image.network(
            s,
            height: 20 * SizeConfig.heightMultiplier,
            width: 70 * SizeConfig.widthMultiplier,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
