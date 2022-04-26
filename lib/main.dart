import 'package:chaardham/Authentication/googleSignInProvider.dart';
import 'package:chaardham/Authentication/login.dart';
import 'package:chaardham/screens/Selectedplace_screen.dart';
import 'package:chaardham/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:chaardham/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(debugShowCheckedModeBanner: false, home: login()),
      );
}
