// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool isGreen = false;
  bool isFontBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        leading: IconButton(
            onPressed: () {
              //
              Navigator.pop(context);
            },
            icon: Icon(Icons.turn_left_sharp)),
        // leadingWidth: 0,
      ),
      body: Container(
        width: double.infinity,
        color: isGreen ? Colors.green : Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My number",
              style: TextStyle(
                color: Colors.white,
                fontSize: isFontBig ? 40 : 20,
                fontWeight: FontWeight.bold,
              ),
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
                Checkbox(
                    value: isGreen,
                    onChanged: (value) {
                      isGreen = value ?? true;
                      print(value);
                      setState(() {});
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Is font BIG?"),
                Switch(
                    value: isFontBig,
                    onChanged: (value) {
                      setState(() {
                        isFontBig = value;
                      });
                    })
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}
