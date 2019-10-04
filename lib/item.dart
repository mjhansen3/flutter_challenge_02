import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Item extends StatefulWidget {
    final String itemImage;

    Item({@required this.itemImage});

    @override
    _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
    bool btnSizeXS;
    bool btnSizeS;
    bool btnSizeM;
    bool btnSizeL;


    @override
    void initState() {
        super.initState();

        btnSizeXS = false;
        btnSizeS = false;
        btnSizeM = true;
        btnSizeL = false;
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Stack(
                children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height/2.8),
                        child: Image.asset(
                            widget.itemImage,
                            fit: BoxFit.cover,
                        ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Stack(
                            children: <Widget> [
                                Positioned(
                                    bottom: 0,
                                    child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height/1.8),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(35),
                                                topRight: Radius.circular(35),
                                            )
                                        ),
                                        child: Padding(
                                            padding: EdgeInsets.all(30),
                                            child: Stack(
                                                children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Text(
                                                            "Women \nPrint Tee",
                                                            style: TextStyle(
                                                                fontFamily: "PlayfairDisplay",
                                                                fontWeight: FontWeight.w800,
                                                                color: Color(0xFF151419),
                                                                fontSize: 30,
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        top: 0,
                                                        right: 0,
                                                        child: Text(
                                                            "\$159.99",
                                                            style: TextStyle(
                                                                fontFamily: "Montserrat",
                                                                fontWeight: FontWeight.w700,
                                                                color: Color(0xFF151419),
                                                                fontSize: 23,
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        top: 90,
                                                        child: Container(
                                                            width: MediaQuery.of(context).size.width - 60,
                                                            height: 50,
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    text: "This is a beautiful women print tee for your daily look, this tee is trendy meets...",
                                                                    style: TextStyle(
                                                                        fontFamily: 'Montserrat',
                                                                        fontWeight: FontWeight.w400,
                                                                        color: Color(0xFF151419),
                                                                        fontSize: 17.5,
                                                                    ),
                                                                    children: <TextSpan>[
                                                                        TextSpan(
                                                                            text: "More",
                                                                            style: TextStyle(
                                                                                fontFamily: 'Montserrat',
                                                                                fontWeight: FontWeight.w700,
                                                                                color: Color(0xFF151419),
                                                                                fontSize: 17.5,
                                                                            ),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        top: 150,
                                                        child: Container(
                                                            width: MediaQuery.of(context).size.width - 60,
                                                            height: 60,
                                                            child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: <Widget>[
                                                                    Text(
                                                                        "Select \nSize",
                                                                        style: TextStyle(
                                                                            fontFamily: 'Montserrat',
                                                                            fontWeight: FontWeight.w500,
                                                                            color: Color(0xFF151419),
                                                                            fontSize: 15,
                                                                        ),
                                                                    ),
                                                                    SizedBox(
                                                                        width: 60,
                                                                        height: 60,
                                                                        child: RaisedButton(
                                                                            elevation: btnSizeXS ? 18 : 0,
                                                                            color: Color(0xFFFFFFFF),
                                                                            padding: EdgeInsets.all(0),
                                                                            onPressed: () {
                                                                                setState(() {
                                                                                    btnSizeXS = true;
                                                                                    btnSizeS = false;
                                                                                    btnSizeM = false;
                                                                                    btnSizeL = false;
                                                                                });
                                                                            },
                                                                            shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                                                side: BorderSide(
                                                                                    color: btnSizeXS ? Colors.transparent : Color(0xFFA5A09F),
                                                                                    width: 1.8,
                                                                                ),
                                                                            ),
                                                                            child: Text(
                                                                                "XS",
                                                                                style: TextStyle(
                                                                                    fontFamily: 'Montserrat',
                                                                                    fontWeight: btnSizeXS ? FontWeight.w700 : FontWeight.w400,
                                                                                    color: Color(0xFF151419),
                                                                                    fontSize: 18,
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(
                                                                        width: 60,
                                                                        height: 60,
                                                                        child: RaisedButton(
                                                                            elevation: btnSizeS ? 18 : 0,
                                                                            color: Color(0xFFFFFFFF),
                                                                            padding: EdgeInsets.all(0),
                                                                            onPressed: () {
                                                                                setState(() {
                                                                                    btnSizeXS = false;
                                                                                    btnSizeS = true;
                                                                                    btnSizeM = false;
                                                                                    btnSizeL = false;
                                                                                });
                                                                            },
                                                                            shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                                                side: BorderSide(
                                                                                    color: btnSizeS ? Colors.transparent : Color(0xFFA5A09F),
                                                                                    width: 1.8,
                                                                                ),
                                                                            ),
                                                                            child: Text(
                                                                                "S",
                                                                                style: TextStyle(
                                                                                    fontFamily: 'Montserrat',
                                                                                    fontWeight: btnSizeS ? FontWeight.w700 : FontWeight.w400,
                                                                                    color: Color(0xFF151419),
                                                                                    fontSize: 18,
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(
                                                                        width: 60,
                                                                        height: 60,
                                                                        child: RaisedButton(
                                                                            elevation: btnSizeM ? 18 : 0,
                                                                            color: Color(0xFFFFFFFF),
                                                                            padding: EdgeInsets.all(0),
                                                                            onPressed: () {
                                                                                setState(() {
                                                                                    btnSizeXS = false;
                                                                                    btnSizeS = false;
                                                                                    btnSizeM = true;
                                                                                    btnSizeL = false;
                                                                                });
                                                                            },
                                                                            shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                                                side: BorderSide(
                                                                                    color: btnSizeM ? Colors.transparent : Color(0xFFA5A09F),
                                                                                    width: 1.8,
                                                                                ),
                                                                            ),
                                                                            child: Text(
                                                                                "M",
                                                                                style: TextStyle(
                                                                                    fontFamily: 'Montserrat',
                                                                                    fontWeight: btnSizeM ? FontWeight.w700 : FontWeight.w400,
                                                                                    color: Color(0xFF151419),
                                                                                    fontSize: 18,
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(
                                                                        width: 60,
                                                                        height: 60,
                                                                        child: RaisedButton(
                                                                            elevation: btnSizeL ? 18 : 0,
                                                                            color: Color(0xFFFFFFFF),
                                                                            padding: EdgeInsets.all(0),
                                                                            onPressed: () {
                                                                                setState(() {
                                                                                    btnSizeXS = false;
                                                                                    btnSizeS = false;
                                                                                    btnSizeM = false;
                                                                                    btnSizeL = true;
                                                                                });
                                                                            },
                                                                            shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                                                side: BorderSide(
                                                                                    color: btnSizeL ? Colors.transparent : Color(0xFFA5A09F),
                                                                                    width: 1.8,
                                                                                ),
                                                                            ),
                                                                            child: Text(
                                                                                "L",
                                                                                style: TextStyle(
                                                                                    fontFamily: 'Montserrat',
                                                                                    fontWeight: btnSizeL ? FontWeight.w700 : FontWeight.w400,
                                                                                    color: Color(0xFF151419),
                                                                                    fontSize: 18,
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        bottom: 0,
                                                        left: 0,
                                                        right: 0,
                                                        child: RaisedButton(
                                                            elevation: 15,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.all(Radius.circular(30))
                                                            ),
                                                            onPressed: () {

                                                            },
                                                            color: Color(0xFF33312E),
                                                            child: SizedBox(
                                                                width: MediaQuery.of(context).size.width,
                                                                height: 50,
                                                                child: Center(
                                                                    child: Text(
                                                                        "Add to my bag",
                                                                        style: TextStyle(
                                                                            fontFamily: 'Montserrat',
                                                                            fontWeight: FontWeight.w400,
                                                                            color: Color(0xFFFFFFFF),
                                                                            fontSize: 15,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ),
                                ),
                            ],
                        ),
                    ),
                    Positioned(
                        top: 40,
                        left: 0,
                        right: 0,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 16,
                                right: 16,
                            ),
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                        IconButton(
                                            onPressed: () {
                                                Navigator.pop(context);
                                            },
                                            icon: Image.asset(
                                                "assets/arrow_ico.png",
                                                width: 20,
                                                height: 20,
                                            ),
                                        ),
                                        Container(
                                            width: 100,
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
                                                    Stack(
                                                        children: <Widget>[
                                                            IconButton(
                                                                onPressed: () {

                                                                },
                                                                icon: Image.asset(
                                                                    "assets/bag_ico.png",
                                                                    width: 20,
                                                                    height: 20,
                                                                ),
                                                            ),
                                                            Positioned(
                                                                top: 14,
                                                                right: 14,
                                                                child: Container(
                                                                    width: 5,
                                                                    height: 5,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.all(Radius.circular(2.5)),
                                                                        color: Color(0xFFBF5245),
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}