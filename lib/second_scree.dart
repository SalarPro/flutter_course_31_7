// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: Container(
          width: double.infinity,
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My number",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                thickness: 5,
                color: Colors.red,
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Green Color"),
                  Checkbox(value: true, onChanged: (value) {})
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Is font BIG?"),
                  Switch(value: false, onChanged: (value) {})
                ],
              ),
              ElevatedButton(onPressed: () {}, child: Text("Go Back"))
            ],
          ),
        ));
  }
}
