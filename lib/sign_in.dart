import 'package:flutter/material.dart';
import 'package:login_app/googleSignIn.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_app/home_screen.dart';
import 'package:provider/provider.dart';
import 'googleVerify.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      // ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          SizedBox(
            child: Image.asset(
              'assets/signin.png',
            ),
            // height: 585,
            width: MediaQuery.of(context).size.height * 0.88,
          ),
          Container(
            child: Text(
              "Welcome back!",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SofiaSansExtraCondensed-Regular'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 8),
            child: Container(
              child: Text(
                "You've been  missed",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'SofiaSansExtraCondensed-Regular',
                    color: Colors.black54),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.88,
            height: 50,
            child: ElevatedButton.icon(
              icon: SvgPicture.asset("assets/icongoogle.svg"),
              style: ElevatedButton.styleFrom(
                  elevation: 1,
                  padding: EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.white70),
              onPressed: () async {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => googleVerify()));
              },
              label: Text(
                "Sign in with Google",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(children: <Widget>[
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 25.0, right: 15.0),
                  child: Divider(
                    color: Colors.black54,
                    height: 50,
                  )),
            ),
            Text(
              "OR",
              style: TextStyle(color: Colors.black54),
            ),
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 25.0),
                  child: Divider(
                    color: Colors.black54,
                    height: 50,
                  )),
            ),
          ]),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.88,
              height: 45,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SofiaSansExtraCondensed-Regular'),
                decoration: InputDecoration(
                  labelText: "Email",
                  suffixIcon:
                      Padding(padding: EdgeInsets.fromLTRB(0, 20, 20, 20)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.black54),
                      gapPadding: 10),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black54),
                  ),
                ),
              )),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.88,
            height: 45,
            child: TextFormField(
              obscureText: true,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SofiaSansExtraCondensed-Regular'),
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon:
                    Padding(padding: EdgeInsets.fromLTRB(0, 20, 20, 20)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.black54),
                    gapPadding: 10),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black54),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.88,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.black),
              child: Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'SofiaSansExtraCondensed-Regular'),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60, top: 12),
                child: Text(
                  "Don't have an account? ",
                  style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'SofiaSansExtraCondensed-Regular',
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text("Sign up here",
                    style: TextStyle(
                      color: Color(0xFF5445ED),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SofiaSansExtraCondensed-Regular',
                    )),
              )
            ],
          )
        ]),
      ),
    );
  }
}
