import 'package:flutter/material.dart';
import 'dart:math';

class Festivals extends StatefulWidget {

  @override
  State<Festivals> createState() => _FestivalsState();
}

class _FestivalsState extends State<Festivals> {
  bool isBack = true;
  double angle = 0;
  bool isBack1 = true;
  double angle1 = 0;
  bool isBack2 = true;
  double angle2 = 0;
  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }
  void _flip1() {
    setState(() {
      angle1 = (angle1 + pi) % (2 * pi);
    });
  }
  void _flip2() {
    setState(() {
      angle2 = (angle2 + pi) % (2 * pi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destination'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _flip,
                child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: angle),
                    duration: Duration(seconds: 1),
                    builder: (BuildContext context, double val, __) {
                      if (val >= (pi / 2)) {
                        isBack = false;
                      } else {
                        isBack = true;
                      }
                      return (Transform(
                        //let's make the card flip by it's center
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(val),
                        child: Container(
                            margin: const EdgeInsets.only(top: 20.0),
                            width: 400,
                            height: 370,
                            child: isBack
                                ? Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: AssetImage("assets/images1/Bissuf.jpg"),
                                ),
                              ),
                            ) //if it's back we will display here
                                : Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.identity()
                                ..rotateY(
                                    pi), // it will flip horizontally the container
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(30.0),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images1/Bissub.jpg"),

                                  ),
                                ),
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 60),
                                    decoration: BoxDecoration(
                                      color: Colors.white70.withOpacity(0.5),
                                    ),
                                    child:Center(
                                      child: Text(
                                        "Bissu Fair is also celebrated at the well-known temple of Santoora Devi in close proximity to Kempty, about 5 kms from Mussoorie. The week-long fair is The fair is held during the Shukla Paksha in the month of Chaitra in accordance with the Hindu calendar.",
                                        style: TextStyle(color: Colors.black, fontSize: 17,fontWeight: FontWeight. bold,),
                                      ),
                                    )
                                ),
                              ),
                            ) //else we will display it here,
                        ),
                      ));
                    }),
              ),
              GestureDetector(
                onTap: _flip2,
                child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: angle2),
                    duration: Duration(seconds: 1),
                    builder: (BuildContext context, double val, __) {
                      if (val >= (pi / 2)) {
                        isBack2 = false;
                      } else {
                        isBack2 = true;
                      }
                      return (Transform(
                        //let's make the card flip by it's center
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(val),
                        child: Container(
                            margin: const EdgeInsets.only(top: 20.0),
                            width: 400,
                            height: 370,
                            child: isBack2
                                ? Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: AssetImage("assets/images1/Devidhuraf.jpg"),
                                ),
                              ),
                            ) //if it's back we will display here
                                : Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.identity()
                                ..rotateY(
                                    pi), // it will flip horizontally the container
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(30.0),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images1/Devidhurab.jpg"),

                                  ),
                                ),
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 60),
                                    decoration: BoxDecoration(
                                      color: Colors.white70.withOpacity(0.5),
                                    ),
                                    child:Center(
                                      child: Text(
                                        "Devidhura Temple in Champawat is known for the event of Devi Dhura Mela during Raksha Bandhan where people gather, and stones are pelted between one gathering to others who shield themselves. In 2013, Uttarakhand high court intervened that the stones are to be replaced with Flowers and fruits.",
                                        style: TextStyle(color: Colors.black, fontSize: 17,fontWeight: FontWeight. bold,),
                                      ),
                                    )
                                ),
                              ),
                            ) //else we will display it here,
                        ),
                      ));
                    }),
              ),
              GestureDetector(
                onTap: _flip1,
                child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: angle1),
                    duration: Duration(seconds: 1),
                    builder: (BuildContext context, double val, __) {
                      if (val >= (pi / 2)) {
                        isBack1 = false;
                      } else {
                        isBack1 = true;
                      }
                      return (Transform(
                        //let's make the card flip by it's center
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(val),
                        child: Container(
                            margin: const EdgeInsets.only(top: 20.0),
                            width: 400,
                            height: 370,
                            child: isBack1
                                ? Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: AssetImage("assets/images1/Hilljatraf.jpg"),
                                ),
                              ),
                            ) //if it's back we will display here
                                : Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.identity()
                                ..rotateY(
                                    pi), // it will flip horizontally the container
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(30.0),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images1/Hilljatrab.jpg"),

                                  ),
                                ),
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 60),
                                    decoration: BoxDecoration(
                                      color: Colors.white70.withOpacity(0.5),
                                    ),
                                    child:Center(
                                      child: Text(
                                        "A festival celebrated by farmers in Pithoragarh district, Hilljatra is associated with paddy transplantation, which is held during the rainy season. During this festival, an elaborate masquerade is held to represent various types of agricultural activities and folk legends are enacted by masked dancers, representing the victory of deities over demons.",
                                        style: TextStyle(color: Colors.black, fontSize: 17,fontWeight: FontWeight. bold,),
                                      ),
                                    )
                                ),
                              ),
                            ) //else we will display it here,
                        ),
                      ));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
