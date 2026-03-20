// Main
import 'package:age_calculator/age_calculator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Components
import 'package:voidpets/components/pet_info_container.dart';

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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 15,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: pet_data.gender == "Female" ? Color(0xFFF4A6A6) : Color(0xFFA8DADC),
                    child: Icon(pet_data.type == "Cat" ? FontAwesomeIcons.cat : FontAwesomeIcons.dog, size: 50)
                    )
                  ),
                PetInfoContainer("Name:", pet_data.name),
                PetInfoContainer("Breed:", pet_data.breed),
                PetInfoContainer("Gender:", pet_data.gender),
                PetInfoContainer("Age:", "${pet_age.years}Y ${pet_age.months}M ${pet_age.days}D"),
                PetInfoContainer("DoB:", "${pet_data.dob.day}/${pet_data.dob.month}/${pet_data.dob.year}"),
                FilledButton(onPressed: () {}, child: Row(mainAxisAlignment: MainAxisAlignment.center, spacing:5, children: [Icon(FontAwesomeIcons.book), Text("Records")],)),
                FilledButton(onPressed: () {}, child: Row(mainAxisAlignment: MainAxisAlignment.center, spacing:5, children: [Icon(FontAwesomeIcons.pencil), Text("Edit Pet")],)),
                FilledButton(style: FilledButton.styleFrom(backgroundColor: Color(0xFFFF4A47)), onPressed: () {}, child: Row(mainAxisAlignment: MainAxisAlignment.center, spacing:5, children: [Icon(FontAwesomeIcons.trash), Text("Delete Pet")],)),

                // Text("Bio: Yuki is a spawn of the devil himself", style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ),
      );
    }
  }
}
