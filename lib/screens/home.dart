// Main
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Components
import 'package:voidpets/components/pet_card.dart';

// Screens
import 'package:voidpets/screens/add_pet.dart';
import 'package:voidpets/screens/pet_detail.dart';

// Database
import 'package:voidpets/database/database.dart';

// Helpers
import 'package:voidpets/helpers/utils.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final database = AppDatabase();

  late List<PetData> pets = [];

  @override
  void initState() {
    super.initState();
    getAllPets();
    print('PETS $pets');
  }

  Future<void> getAllPets() async {
    List<PetData> allpets = await database.select(database.pet).get();
    setState(() {
      pets = allpets;
    });
  }

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
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPet()),
            ).then((_) {
              getAllPets();
            });
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
          final pet_age = getAge(pet.dob);
          return PetCard(pet.name, pet_age, pet.type, pet.id, pet.breed);

        },
      ),
    );
  }
}
