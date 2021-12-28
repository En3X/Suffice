import 'package:flutter/material.dart';
import 'package:suffice/pages/explore.dart';
import 'package:suffice/pages/login_scrreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                height: 25,
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
                              'Sign Up Now.', //Signup
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
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Align(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Text(
                                'Registered?/', //if
                                style: TextStyle(
                                  //you have
                                  fontSize: 18, //account
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
                                          builder: (context) => LogInScreen()));
                                },
                                child: Text(
                                  'Login Here',
                                  style: TextStyle(
                                    //Login
                                    fontSize: 20, //here
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
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Form(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                //Email
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
                                validator: (value) {},
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                //Full
                                cursorColor:
                                    Theme.of(context).cursorColor, //Name
                                keyboardType: TextInputType.text,
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
                                  suffixIcon: Icon(Icons.person),
                                  hintText: 'Full Name',
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
                                height: 15,
                              ),
                              TextFormField(
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
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
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
                                  hintText: 'Retype Password',
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
                                height: 35,
                              ),
                              SizedBox(
                                height: 55,
                                width: 500,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //Signup
                                    // button
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ExplorePage(usertype: "user")));
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
                                    "Sign Up",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
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
}
