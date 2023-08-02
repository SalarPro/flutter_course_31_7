// ignore_for_file: prefer_const_constructors

import 'package:first_app/first_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailETC = TextEditingController(text: "info@salarpro.com");
  var passwordETC = TextEditingController(text: "12345678");

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset(
              'assets/images/account.png',
              width: 200,
              height: 200,
            ),
            Text(
              "Welcome message",
              style: TextStyle(fontFamily: "cairo", fontSize: 30),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: emailETC,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // hintText: 'Email',
                  label: Text("Email"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: passwordETC,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
                obscureText: isVisible,
                obscuringCharacter: '●',
              ),
            ),
            IconButton(
                onPressed: () {
                  // if (isVisible) {
                  //   isVisible = false;
                  // } else {
                  //   isVisible = true;
                  // }

                  // isVisible = isVisible ? true : false;
                  isVisible = !isVisible;

                  // print(isVisible ? "is visible" : "is not visible");

                  setState(() {});
                },
                icon: Icon(!isVisible
                    ? Icons.remove_red_eye
                    : Icons.hide_image_rounded)),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                var email = emailETC.text;
                var password = passwordETC.text;

                print("email: ${email}");
                print("password: ${password}");

                if (email == "info@salarpro.com" && password == "12345678") {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => FirstScreen()));
                } else {
                  const snackBar = SnackBar(
                    content: Text(
                      'Email or Password are wrong!',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(2, 3), // changes position of shadow
                    ),
                  ],
                ),
                width: 200,
                height: 50,
                child: Center(child: Text("Login")),
              ),
            ),
            const SizedBox(height: 30),
            Text("Don't have and account, Register now")
          ],
        ),
      ),
    );
  }
}
