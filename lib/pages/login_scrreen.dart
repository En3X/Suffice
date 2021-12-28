// ignore_for_file: unnecessary_statements

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:suffice/pages/explore.dart';
import 'package:suffice/pages/register_screen.dart';
import 'package:suffice/services/firebase_services.dart';

GlobalKey<FormState> formKey = GlobalKey<FormState>();

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  String password = "", username = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text(
                              'Hey,', //Hey
                              textAlign: TextAlign.left, //text
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text(
                              'Login Now.', //login
                              textAlign: TextAlign.left, //text
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Align(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Text(
                                'If you are new/', //if
                                style: TextStyle(
                                  //you are
                                  fontSize: 18, //new
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignUpScreen()));
                                },
                                child: Text(
                                  'Create New',
                                  style: TextStyle(
                                    //Create
                                    fontSize: 20, //New
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff5244bf),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Form(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                //Email
                                onChanged: (value) => {this.username = value},
                                cursorColor:
                                    Theme.of(context).cursorColor, //Address
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xfff3f2fa),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(13),
                                    borderSide: BorderSide(
                                      color: Color(0xff5244bf),
                                      width: 1.5,
                                    ),
                                  ),
                                  suffixIcon: Icon(Icons.mail),
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff5244bf)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                onChanged: (value) => {this.password = value},
                                obscureText: true, //Password
                                cursorColor:
                                    Theme.of(context).cursorColor, //Field
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xfff3f2fa),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(13),
                                    borderSide: BorderSide(
                                      color: Color(0xff5244bf),
                                      width: 1.5,
                                    ),
                                  ),
                                  suffixIcon: Icon(Icons.lock),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff5244bf)),
                                  ),
                                ),
                                // validator: validatePassword,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Align(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Text(
                                        'Forgot Password?', //forgot
                                        style: TextStyle(
                                          //password
                                          fontSize: 18,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 7,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Reset',
                                          style: TextStyle(
                                            //Password
                                            fontSize: 20, //Reset
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff5244bf),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              SizedBox(
                                height: 55,
                                width: 500,
                                child: ElevatedButton(
                                  onPressed: () {
                                    validatePassword();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff5244bf),
                                      textStyle: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      )),
                                  child: Text(
                                    "Login",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ExplorePage(usertype: "guest")));
                                },
                                child: Text(
                                  'Skip Now',
                                  style: TextStyle(
                                    //Skip
                                    fontSize: 18, //Now
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void validatePassword() async {
    final auth = FirebaseAuth.instance;
    // if (this.username.isEmpty || this.password.isEmpty) {
    //   Fluttertoast.showToast(msg: "Password or username is a required field");
    // } else {
    //   try {
    //     await auth.signInWithEmailAndPassword(
    //         email: this.username, password: this.password);
    //     Fluttertoast.showToast(msg: "Login successful");
    //   } catch (e) {
    //     if (e.toString().contains("user-not-found")) {
    //       Fluttertoast.showToast(
    //           msg: "No user found for given email.\nRegister now");
    //     } else {
    //       if (e.toString().contains("Invalid password")) {
    //         Fluttertoast.showToast(msg: "Email/Password Invalid");
    //       } else {
    //         Fluttertoast.showToast(msg: e.toString());
    //       }
    //     }
    //   }
    // }
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ExplorePage(usertype: "user")));
  }
}
