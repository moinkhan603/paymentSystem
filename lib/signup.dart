import 'package:flutter/material.dart';
import 'package:payment_system/signin.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(16.0),

              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                    height: 10,
                  ),
        Image.asset("assets/images/pay.png",
          height: 180,

        ),
                  SizedBox(height: 40.0),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(16.0),
                      prefixIcon: Container(
                          padding:
                          const EdgeInsets.only(top: 16.0, bottom: 16.0),
                          margin: const EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(10.0))),
                          child: Icon(
                            Icons.person,
                            color: Colors.blue,
                          )),
                      hintText: "enter your email",
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.blue.withOpacity(0.1),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(16.0),
                      prefixIcon: Container(
                          padding:
                          const EdgeInsets.only(top: 16.0, bottom: 16.0),
                          margin: const EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(10.0))),
                          child: Icon(
                            Icons.lock,
                            color: Colors.blue,
                          )),
                      hintText: "enter your password",
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.blue.withOpacity(0.1),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(16.0),
                      prefixIcon: Container(
                          padding:
                          const EdgeInsets.only(top: 16.0, bottom: 16.0),
                          margin: const EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(10.0))),
                          child: Icon(
                            Icons.lock,
                            color: Colors.blue,
                          )),
                      hintText: "Conifirm your password",
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.blue.withOpacity(0.1),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 30.0),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Sign Up".toUpperCase()),
                      onPressed: () {

//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => AdminPanel()),
//                        );

                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        textColor: Colors.black,
                        child: Text("Already Have an Account? Sign IN".toUpperCase()),
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                        },
                      ),

                    ],
                  ),
                  //SizedBox(height: 10.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
