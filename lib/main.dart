import 'package:first_app/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange[900],
          elevation: 0,
          foregroundColor: Colors.white,
        ),
      ),
      home: LoginScreen(),
    ),
  );
}
