import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:voidpets/components/pet_card.dart';
import 'package:voidpets/screens/add_pet.dart';
import 'package:voidpets/screens/pet_detail.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> pets = [
    {'id': 1, 'name': 'Yukioooooaosdosodsod', 'type': 'cat', 'age': 1},
    {'id': 2, 'name': 'Bob', 'type': 'dog', 'age': 2},
    {'id': 3, 'name': 'Whiskers', 'type': 'cat', 'age': 3},
    {'id': 4, 'name': 'Rex', 'type': 'dog', 'age': 5},
    {'id': 5, 'name': 'Mittens', 'type': 'cat', 'age': 1},
    {'id': 6, 'name': 'Whiskers', 'type': 'cat', 'age': 3},
    {'id': 7, 'name': 'Rex', 'type': 'dog', 'age': 5},
    {'id': 8, 'name': 'Mittens', 'type': 'cat', 'age': 1},
    {'id': 9, 'name': 'Rex', 'type': 'dog', 'age': 5},
    {'id': 10, 'name': 'Mittens', 'type': 'cat', 'age': 1},
    {'id': 11, 'name': 'Rex', 'type': 'dog', 'age': 5},
    {'id': 12, 'name': 'Mittens', 'type': 'cat', 'age': 1}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("VoidPets"),
        backgroundColor: const Color(0xFF5A4E57),
        foregroundColor: Color(0xFFFFFFF3),
        centerTitle: true,
      ),
      backgroundColor: Color(0XFFEDE1D4),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: const Color(0xFF00A6A6),
        // foregroundColor: const Color(0xFF2B2528),
        onPressed: () {
          // Define the action when the button is pressed
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPet()),
            );
        },
        tooltip: 'Add a pet', // Optional tooltip for accessibility
        child: const Icon(Icons.pets), // The icon displayed in the button
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 cards per row
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1, // controls card shape
        ),
        itemCount: pets.length,
        itemBuilder: (context, index) {
          final pet = pets[index];

          return PetCard(pet["name"], pet["age"], pet["type"], pet["id"] );

        },
      ),
    );
  }
}
