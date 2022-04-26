import 'package:chaardham/screens/adventure.dart';
import 'package:chaardham/screens/destination.dart';
import 'package:chaardham/screens/festivals.dart';
import 'package:chaardham/screens/home_screen.dart';
import 'package:flutter/material.dart';
class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Experience'),
      ),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Adventure()),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                          foregroundColor:MaterialStateProperty.all<Color>(Colors.white),
                          elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {if (states.contains(MaterialState.disabled)) {return 0;}return 0;},),
                      ),

                      child: Image.asset('assets/images1/adventure.png',height: 150,),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child:Text("Adventure" ,textAlign: TextAlign.left,style: TextStyle(fontSize: 20,fontWeight: FontWeight. bold)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child:Text("Destinations" ,textAlign: TextAlign.right,style: TextStyle(fontSize: 20,fontWeight: FontWeight. bold)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Destination()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:MaterialStateProperty.all<Color>(Colors.white),
                        elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {if (states.contains(MaterialState.disabled)) {return 0;}return 0;},),
                      ),

                      child: Image.asset('assets/images1/destination.png',height: 150,),
                    ),
                    )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:MaterialStateProperty.all<Color>(Colors.white),
                        elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {if (states.contains(MaterialState.disabled)) {return 0;}return 0;},),
                      ),

                      child: Image.asset('assets/images1/events.png',height: 150,),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child:Text("Events" ,textAlign: TextAlign.left,style: TextStyle(fontSize: 20,fontWeight: FontWeight. bold)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child:Text("Festivals & Fairs" ,textAlign: TextAlign.right,style: TextStyle(fontSize: 20,fontWeight: FontWeight. bold)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Festivals()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:MaterialStateProperty.all<Color>(Colors.white),
                        elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {if (states.contains(MaterialState.disabled)) {return 0;}return 0;},),
                      ),

                      child: Image.asset('assets/images1/festival.png',height: 150,),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
