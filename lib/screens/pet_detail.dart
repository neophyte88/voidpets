// Main
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Components

// Screens

// Database


class PetDetail extends StatefulWidget {
  const PetDetail({super.key});

  @override
  State<PetDetail> createState() => _PetDetailState();
}

class _PetDetailState extends State<PetDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yuki"),
        backgroundColor: const Color(0xFF5A4E57),
        foregroundColor: Color(0xFFFFFFF3),
        centerTitle: true,
      ),
      backgroundColor: Color(0XFFECE9EB),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              Icon(FontAwesomeIcons.cat, size: 60),
              Text("Yuki", style: TextStyle(fontSize: 30)),
              Text("Breed: Calico", style: TextStyle(fontSize: 20)),
              Text("Gender: Female", style: TextStyle(fontSize: 20)),
              Text("Age: 1 year", style: TextStyle(fontSize: 20)),
              Text("Bio: Yuki is a spawn of the devil himself", style: TextStyle(fontSize: 15)),
              ],
          ),
        ),
      ),
    );
  }
}
