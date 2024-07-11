import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    ),
  );
}
