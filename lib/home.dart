import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'item.dart';

class Home extends StatelessWidget {
    final List images = [
        "assets/images/photo_1.jpeg",
        "assets/images/photo_3.jpg",
        "assets/images/photo_4.jpg",
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
                children: <Widget>[
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: 0,
                                left: 30,
                                bottom: 20,
                                right: 30,
                            ),
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                        SizedBox(
                                            width: 50,
                                            child: IconButton(
                                                onPressed: () {

                                                },
                                                icon: Image.asset(
                                                    "assets/home_ico.png",
                                                    width: 20,
                                                    height: 20,
                                                ),
                                            ),
                                        ),
                                        SizedBox(
                                            width: 50,
                                            child: IconButton(
                                                onPressed: () {

                                                },
                                                icon: Image.asset(
                                                    "assets/heart_ico.png",
                                                    width: 20,
                                                    height: 20,
                                                ),
                                            ),
                                        ),
                                        SizedBox(
                                            width: 50,
                                            child: IconButton(
                                                onPressed: () {

                                                },
                                                icon: Image.asset(
                                                    "assets/bag_ico.png",
                                                    width: 20,
                                                    height: 20,
                                                ),
                                            ),
                                        ),
                                        SizedBox(
                                            width: 50,
                                            child: IconButton(
                                                onPressed: () {

                                                },
                                                icon: Image.asset(
                                                    "assets/user_ico.png",
                                                    width: 20,
                                                    height: 20,
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ),
                    ),
                    Positioned(
                        top: 40,
                        left: 0,
                        right: 0,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 30,
                                right: 30
                            ),
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                        Image.asset(
                                            "assets/arrow_ico.png",
                                            width: 20,
                                            height: 20,
                                        ),
                                        ClipRRect(
                                            borderRadius: BorderRadius.all(Radius.circular(30)),
                                            child: Image.asset(
                                                "assets/images/avatar.jpg",
                                                width: 45,
                                                height: 45,
                                                fit: BoxFit.cover,
                                            ),
                                        )
                                    ],
                                ),
                            ),
                        )
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: 120,
                                left: 30,
                                right: 0,
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                    Text(
                                        "Shop for \nDay Dresses",
                                        style: TextStyle(
                                            fontFamily: "PlayfairDisplay",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 42.5
                                        ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 40,
                                            bottom: 30,
                                        ),
                                        child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: MediaQuery.of(context).size.height / 2,
                                            child: ListView.builder(
                                                scrollDirection: Axis.horizontal,
                                                itemCount: images == null ? 0 : images.length,
                                                itemBuilder: (BuildContext context, int index) {
                                                    return GestureDetector(
                                                        onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (context) => Item(),
                                                                ),
                                                            );
                                                        },
                                                        child: Card(
                                                            elevation: 3,
                                                            color: Color(0xFFA2A2A2),
                                                            margin: EdgeInsets.only(
                                                                right: index == images.length - 1 ? 80 : 30,
                                                                bottom: 10,
                                                            ),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(15),
                                                            ),
                                                            child: Container(
                                                                width: 300,
                                                                //height: MediaQuery.of(context).size.height / 3,
                                                                child: Stack(
                                                                    children: <Widget>[
                                                                        ClipRRect(
                                                                            borderRadius: BorderRadius.all(Radius.circular(15)),
                                                                            child: Image.asset(
                                                                                images[index],
                                                                                width: 300,
                                                                                fit: BoxFit.fill,
                                                                            ),
                                                                        ),
                                                                        Positioned(
                                                                            bottom: 20,
                                                                            right: 20,
                                                                            child: SizedBox(
                                                                                width: 50,
                                                                                height: 50,
                                                                                child: FlatButton(
                                                                                    color: Colors.white,
                                                                                    onPressed: () {

                                                                                    },
                                                                                    shape: RoundedRectangleBorder(
                                                                                        borderRadius: BorderRadius.all(Radius.circular(25))
                                                                                    ),
                                                                                    child: Padding(
                                                                                        padding: EdgeInsets.all(0),
                                                                                        child: Image.asset(
                                                                                            "assets/heart_ico.png",
                                                                                            color: Color(0xFF8A8A8F),
                                                                                            width: 15,
                                                                                            height: 15,
                                                                                        ),
                                                                                    ),
                                                                                ),
                                                                            )
                                                                        ),
                                                                        Positioned(
                                                                            bottom: 50,
                                                                            left: 20,
                                                                            child: SizedBox(
                                                                                width: 150,
                                                                                height: 50,
                                                                                child: Text(
                                                                                    "Beautiful \nWomen Dress",
                                                                                    style: TextStyle(
                                                                                        fontFamily: "Montserrat",
                                                                                        fontWeight: FontWeight.w400,
                                                                                        color: Colors.white,
                                                                                        fontSize: 20,
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ),
                                                                        Positioned(
                                                                            bottom: 20,
                                                                            left: 20,
                                                                            child: Text(
                                                                                "\$159.99",
                                                                                style: TextStyle(
                                                                                    fontFamily: "Montserrat",
                                                                                    fontWeight: FontWeight.w500,
                                                                                    color: Colors.white,
                                                                                    fontSize: 20,
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ),
                                                    );
                                                },
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}
