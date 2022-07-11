import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login_page/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

class newPage extends StatelessWidget {
  const newPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  pages createState() => pages();
}

class pages extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'images/bgg.jpg'),
                        radius: 25,
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.search_rounded,
                          color: Colors.black45,
                          size: 30,
                        ),
                      ),
                      SizedBox(width: 5),
                      TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.notifications_rounded,
                          color: Colors.black45,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.black45,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Text(
                          'Discover Your \nFavourite Job.',
                          style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: ListTile(
                      enabled: true,
                      hoverColor: Colors.blue,
                      tileColor: Colors.black26,
                      leading: Icon(Icons.search_rounded),
                      title: Text('Search your job...'),
                      trailing: Icon(Icons.add_a_photo_outlined),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Categories',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 190,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'More',
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.black,
                                size: 15,
                              )
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: NetworkImage(
                                          'images/appstore.png')),
                                  borderRadius: BorderRadius.circular(20)),
                              width: 130,
                              margin:
                              EdgeInsets.only(left: 20, bottom: 10, right: 10),
                            ),
                            Text('Popularity')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'images/cam.jpeg')),
                                  borderRadius: BorderRadius.circular(20)),
                              width: 130,
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                            ),
                            Text('Photography')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'images/vd.jpeg')),
                                  borderRadius: BorderRadius.circular(20)),
                              width: 130,
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                            ),
                            Text('Visual Design')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 120,
                              width: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'images/art.jpeg')),
                                  borderRadius: BorderRadius.circular(20)),
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                            ),
                            Text('Art')
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Recommended',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 190,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'images/cover.jepg')),
                                  borderRadius: BorderRadius.circular(20)),
                              width: 300,
                              margin:
                              EdgeInsets.only(left: 20, bottom: 10, right: 10),
                            ),
                            Text('Magazine Cover Desing')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 190,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'images/fonts.jpeg')),
                                  borderRadius: BorderRadius.circular(20)),
                              width: 300,
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                            ),
                            Text('Display Fonts for Magazine')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 190,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'images/material design.jpeg')),
                                  borderRadius: BorderRadius.circular(20)),
                              width: 300,
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                            ),
                            Text('Material Designing')
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}