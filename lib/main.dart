import 'package:flutter/material.dart';
import 'package:voidpets/home.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Home(),
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF00A6A6),),
      // brightness: Brightness.dark,
      useMaterial3: true,
    ),
  ));
}


