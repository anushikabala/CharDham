import 'package:flutter/material.dart';
import 'dart:math';

class Adventure extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _AdventureState();
  }

}

class _AdventureState extends State<Adventure> {

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
        title: Text('Adventure'),
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
                                  image: AssetImage("assets/images1/trekkingf.jpg"),
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
                                    image: AssetImage("assets/images1/trekkingb.jpg"),

                                  ),
                                ),
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 60),
                                    decoration: BoxDecoration(
                                      color: Colors.white70.withOpacity(0.5),
                                    ),
                                    child:Center(
                                      child: Text(
                                        'Uttarakhand is blessed with a scenic hilly terrain that renders the state as one of the best in the country for trekking. From beginners to the seasoned - everyone can test their physical stamina here. One of the most-traversed trekking routes here is the Bageshwar – Sunderdhunga – Pindari – Kafni Glacier trek in the state’s Pithoragarh district',
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
                                  image: AssetImage("assets/images1/rafting.jpg"),
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
                                    image: AssetImage("assets/images1/raftingb.jpg"),

                                  ),
                                ),
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 60),
                                    decoration: BoxDecoration(
                                      color: Colors.white70.withOpacity(0.5),
                                    ),
                                    child:Center(
                                      child: Text(
                                        'Uttarakhand, with gurgling rivers like Ganga, Yamuna, Alaknanda, Tons, Kali, Kosi and many more, is the ultimate white water rafting destination. Between braving the currents and gently floating, rafting in Uttarakhand can be experienced by the novice, the experienced and even non-swimmers. Rishikesh is one of the most popular rafting destinations',
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
                                  image: AssetImage("assets/images1/paraf.jpg"),
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
                                    image: AssetImage("assets/images1/parab.jpg"),

                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 60),
                                  decoration: BoxDecoration(
                                    color: Colors.white70.withOpacity(0.5),
                                  ),
                                  child:Center(
                                    child: Text(
                                      'An extreme sport, paragliding can be described as flying in the sky, high above lush dense forests, undulating valleys carpeted in green and snow-capped peaks. And Uttarakhand, bordered by the mighty Himalayan ranges in the north and the undulating Terai plains in the south provides just the perfect the perfect topography for this sky-touching sport.',
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
