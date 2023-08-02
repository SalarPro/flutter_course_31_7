// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/login_screen.dart';
import 'package:first_app/second_scree.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First App",
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Do you want to log out !!"),
                        content: Text(
                            "After login out you will be able to login again"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                    (route) => false);
                              },
                              child: Text("Log out")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("cancel"))
                        ],
                      );
                    });
              },
              icon: Icon(Icons.logout)),
        ],
      ),
      body: Container(
        width: double.infinity,
        // height: 300,
        // color: Colors.amber,
        color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 28),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Salar",
                  style: TextStyle(fontSize: 28),
                ),
              ],
            ),
            FlutterLogo(size: 200),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Text(
                "Open second screen",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
