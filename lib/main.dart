import 'package:flutter/material.dart';
import 'package:voidpets/home.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Home(),
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF00D9C0)),
      // brightness: Brightness.dark,
      useMaterial3: true,
    ),
  ));
}


