import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_app/home_screen.dart';
import 'package:login_app/sign_in.dart';

class googleVerify extends StatelessWidget {
  const googleVerify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: Center(
                      child: CircularProgressIndicator(color: Colors.black)),
                );
              } else if (snapshot.hasData) {
                return HomeScreen();
              } else if (snapshot.hasError) {
                print('Something is wrong');
                return SignInScreen();
              } else {
                return SignInScreen();
              }
            }),
      );
}
