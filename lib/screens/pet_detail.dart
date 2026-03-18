// Main
import 'package:age_calculator/age_calculator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Components

// Screens

// Database
import 'package:voidpets/database/database.dart';

// Helpers
import 'package:voidpets/helpers/utils.dart';

class PetDetail extends StatefulWidget {
  final int pet_id;

  const PetDetail({super.key, required this.pet_id});

  @override
  State<PetDetail> createState() => _PetDetailState();
}

class _PetDetailState extends State<PetDetail> {
  final database = AppDatabase();
  PetData? pet_data_f;
  DateDuration? pet_age_f;

  Future<void> get_pet_by_id_and_age() async {
    PetData pet_data_by_id = await (database.select(
      database.pet,
    )..where((t) => t.id.equals(widget.pet_id))).getSingle();
    DateDuration pet_age_obj = getAge(pet_data_by_id.dob);
    setState(() {
      pet_data_f = pet_data_by_id;
      pet_age_f = pet_age_obj;
    });
  }

  @override
  void initState() {
    super.initState();
    get_pet_by_id_and_age();
  }

  @override
  Widget build(BuildContext context) {
    if (pet_data_f == null || pet_age_f == null) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    } else {
      final pet_data = pet_data_f!;
      final pet_age = pet_age_f!;

      return Scaffold(
        appBar: AppBar(
          title: Text(pet_data.name),
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
                Icon(pet_data.type == "Cat" ? FontAwesomeIcons.cat : FontAwesomeIcons.dog, size: 60),
                Text(pet_data.name, style: TextStyle(fontSize: 30)),
                Text(
                  "Breed: ${pet_data.breed}",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Gender: ${pet_data.gender}",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Age: ${pet_age.years} years, ${pet_age.months} months and ${pet_age.days} days",
                  style: TextStyle(fontSize: 20),
                ),
                // Text("Bio: Yuki is a spawn of the devil himself", style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ),
      );
    }
  }
}
