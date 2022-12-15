import 'dart:js';

import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import '/home.dart';
import 'package:flutter/services.dart';
import '/pages/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
 State<LoginPage> createState() => _LoginPagestate();
}

class _LoginPagestate extends State<LoginPage> {
  final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(
    fontSize: 20,
    decorationColor: Color.fromARGB(255, 2, 19, 34),
   
  ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 68, 146, 209),
                      Color.fromARGB(255, 2, 69, 78),
                      Color.fromARGB(255, 89, 183, 196),
                      Color.fromARGB(255, 1, 36, 41),
                    ]),
              ),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Our Ride',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset('image/ride.png'),

                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      child: ElevatedButton(
                        style: style,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SigninPage()));
                        },
                        child: const Text('LOGIN',
                        selectionColor: Color.fromARGB(255, 2, 19, 34),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
