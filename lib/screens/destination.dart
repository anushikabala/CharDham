import 'package:flutter/material.dart';
import 'dart:math';

class Destination extends StatefulWidget {

  @override
  State<Destination> createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
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
                                  image: AssetImage("assets/images1/abbottf.jpg"),
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
                                    image: AssetImage("assets/images1/abbottb.jpg"),

                                  ),
                                ),
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 60),
                                    decoration: BoxDecoration(
                                      color: Colors.white70.withOpacity(0.5),
                                    ),
                                    child:Center(
                                      child: Text(
                                        "Situated at an elevation of around 1,981 m above sea level in Champawat district, Abbott Mount is a picturesque hamlet. It is said that a British businessman, John Harold Abbott, was so mesmerised by the serenity of this place that he decided to develop it as a European settlement.",
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
                                  image: AssetImage("assets/images1/Chambaf.jpg"),
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
                                    image: AssetImage("assets/images1/Chambab.jpg"),

                                  ),
                                ),
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 60),
                                    decoration: BoxDecoration(
                                      color: Colors.white70.withOpacity(0.5),
                                    ),
                                    child:Center(
                                      child: Text(
                                        "Soaked in old-world charm, the picturesque town of Chamba in Uttarakhand is situated at an altitude of 1676 meters above sea level, on the foothills of the Himalayas.Chamba offers the most breath-taking views of the mighty peaks, mist-covered deep ravines, and verdant valleys, Chamba lies unexplored, untouched, overlooking the snow-clad mountains on one side and offering a magnificent view of the valley on the other.",
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
                                  image: AssetImage("assets/images1/Corbettf.jpg"),
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
                                    image: AssetImage("assets/images1/Corbettb.jpg"),

                                  ),
                                ),
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 60),
                                    decoration: BoxDecoration(
                                      color: Colors.white70.withOpacity(0.5),
                                    ),
                                    child:Center(
                                      child: Text(
                                        "Established in 1936, this is India's first national park. It is named after the legendary naturalist and conservationist Jim Corbett.  Located at the Himalayas' foothills, near the popular hill-station of Nainital, the beautiful Jim Corbett National Park, is famous for being home to a large number of tigers, the highest among any Indian national park. ",
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
