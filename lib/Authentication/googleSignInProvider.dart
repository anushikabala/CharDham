import 'package:chaardham/Authentication/login.dart';
import 'package:chaardham/Authentication/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier{
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future googleLogin()async{
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;
      _user = googleUser;

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
    }catch(e){
      print(e.toString());
    }
    notifyListeners();
  }
  Future logout()async{
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }

}

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }else if(!snapshot.hasData ){
            return ProfilePage();
          }else if(snapshot.hasError){
            return Center(child: Text("Something went wrong"),);
          }else {
            return login();
          }

        }
      ),
    );
  }
}
