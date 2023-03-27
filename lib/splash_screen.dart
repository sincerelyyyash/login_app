import 'package:flutter/material.dart';
import 'package:login_app/sign_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
              child: Image.asset(
            'assets/splash.png',
          )),
        ),
        Container(
          child: Text(
            "Growing your",
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
                fontFamily: 'SofiaSansExtraCondensed-Regular'),
          ),
        ),
        Container(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 3, 10, 3),
          child: Row(
            children: [
              Text("business is ",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SofiaSansExtraCondensed-Regular')),
              Text("easier",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF5445ED),
                      fontFamily: 'SofiaSansExtraCondensed-Regular'))
            ],
          ),
        )),
        Container(
          child: Text("then you think!",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Text(
            "Sign up takes only 2 minutes",
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'SofiaSansExtraCondensed-Regular',
                fontWeight: FontWeight.w400,
                color: Colors.black54),
          ),
        ),
        SizedBox(
          height: 90,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.94,
          height: 45,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInScreen()));
            },
            style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: Colors.black),
            child: Text(
              "Get Started",
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontFamily: 'SofiaSansExtraCondensed-Regular'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.94,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              },
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Color(0xFFF5F5F5)),
              child: Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SofiaSansExtraCondensed-Regular'),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
