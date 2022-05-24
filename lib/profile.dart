import 'package:diet_app/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xFF000000),

    body: Stack(
    children: <Widget>[
    Positioned(
    top: 0,
    height: height * 0.9,
    left: 0,
    right: 0,

        child : Container(
        color: Color(0xffffffff),
    padding: const EdgeInsets.only(
    top: 40,
    left: 03,
    right: 05,
    bottom: 10,
    ),
      child: ElevatedButton.icon(
        label: Text('Logout', style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),),
        icon: Icon(Icons.logout, color: Colors.black,),
        onPressed: () {
          logout(context);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          fixedSize: MaterialStateProperty.all(Size(220, 50)),
          elevation: MaterialStateProperty.all(20),
          overlayColor: MaterialStateProperty.all(Colors.black26),
        ),
      ),
        ),
    ),
      ],
    ),
    );
  }
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}