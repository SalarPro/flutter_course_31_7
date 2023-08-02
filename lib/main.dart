import 'package:first_app/first_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange[900],
          elevation: 0,
          foregroundColor: Colors.white,
        ),
      ),
      home: FirstScreen(),
    ),
  );
}
