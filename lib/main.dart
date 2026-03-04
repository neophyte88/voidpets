import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0x00D9C0)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("<VoidPets>"),
                    backgroundColor: const Color(0xFF00D9C0),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Define the action when the button is pressed
            print('Button pressed!');
          },
          child: const Icon(Icons.pets), // The icon displayed in the button
          tooltip: 'Add a pet', // Optional tooltip for accessibility
        ),
      ),
    );
  }
}
