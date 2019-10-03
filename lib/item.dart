import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Item extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Stack(
                children: <Widget>[
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
                                        IconButton(
                                            onPressed: () {

                                            },
                                            icon: Image.asset(
                                                "assets/arrow_ico.png",
                                                width: 20,
                                                height: 20,
                                            ),
                                        ),
                                        Container(
                                            width: 90,
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                    IconButton(
                                                        onPressed: () {

                                                        },
                                                        icon: Image.asset(
                                                            "assets/heart_ico.png",
                                                            width: 20,
                                                            height: 20,
                                                        ),
                                                    ),
                                                    IconButton(
                                                        onPressed: () {

                                                        },
                                                        icon: Image.asset(
                                                            "assets/bag_ico.png",
                                                            width: 20,
                                                            height: 20,
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        )
                                    ],
                                ),
                            ),
                        )
                    ),
                ],
            ),
        );
    }
}
