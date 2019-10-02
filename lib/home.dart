import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
                children: <Widget>[
                    Positioned(
                        bottom: 0,
                        left: 20,
                        right: 20,
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: 0,
                                left: 0,
                                bottom: 40,
                                right: 0,
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
                        top: 60,
                        left: 0,
                        right: 0,
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[

                                ],
                            ),
                        )
                    )
                ],
            ),
        );
    }
}
