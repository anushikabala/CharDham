import 'package:chaardham/screens/Selectedplace_screen.dart';
import 'package:chaardham/screens/adventure.dart';
import 'package:chaardham/screens/experience.dart';
import 'package:chaardham/screens/plantrip.dart';
import 'package:flutter/material.dart';
import 'package:chaardham/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlanTrip()
    );
  }
}


