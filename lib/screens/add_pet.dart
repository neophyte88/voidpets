import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddPet extends StatefulWidget {
  const AddPet({super.key});

  @override
  State<AddPet> createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  final _form_global_key = GlobalKey<FormState>();

  String new_pet_type = "Cat";
  String new_pet_breed = "Generic";
  String new_pet_gender = "Male";
  String new_pet_name = "";
  String new_pet_owner_name = "";
  String new_pet_owner_contact = "";
  DateTime new_pet_dob = DateTime.now();

  Map<String, Map> breeds = {
    "Cat": {
      "Generic": "Generic",
      "Calico": "Calico",
      "Orange": "Orange",
      "Good Boy": "Good Boy",
      "Good Girl": "Good Girl",
      "Satan": "Satan",
      "Blob": "Blob"
    },
    "Dog": {
      "Generic": "Generic",
      "Labrador": "Labrador",
      "German Shepard": "German Shepard",
      "Husky": "Husky",
      "Good Boy": "Good Boy",
      "Good Girl": "Good Girl",
      "Satan": "Satan",
      "Blob": "Blob"
    },
    "-":
    {
      "Choose an Option": "Choose an Option"
    } 
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("< Add a pet >"),
        backgroundColor: const Color(0xFF5A4E57),
        foregroundColor: Color(0xFFFFFFF3),
        centerTitle: true,
      ),
      backgroundColor: Color(0XFFEDE1D4),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(40),
        child: Form(
          key: _form_global_key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 20,
            children: [
              // Type
              DropdownButtonFormField(
                initialValue: new_pet_type,
                decoration: InputDecoration(labelText: "Type"),
                items: [
                  DropdownMenuItem(value: "Cat", child: Text("Cat")),
                  DropdownMenuItem(value: "Dog", child: Text("Dog")),
                ],
                onChanged: (value) {
                  setState(() {
                    new_pet_type = value!;
                  });
                },
              ),
              // Breed
              DropdownButtonFormField(
                initialValue: new_pet_breed,
                decoration: InputDecoration(labelText: "Breed"),
                // items: [
                //   DropdownMenuItem(value: "Generic", child: Text("Generic")),
                //   DropdownMenuItem(value: "Calico", child: Text("Calico")),
                //   DropdownMenuItem(value: "Satan", child: Text("Satan")),
                //   DropdownMenuItem(value: "Good_Boy", child: Text("Good Boy")),
                //   DropdownMenuItem(value: "Good_Girl", child: Text("Good Girl")),

                // ],
                items: (breeds[new_pet_type] ?? {}).entries.map((entry) {
                  return DropdownMenuItem(value: entry.key.toString(), child: Text(entry.value));
                }).toList(),

                onChanged: (value) {
                  setState(() {
                    new_pet_breed = value!;
                  });
                },
              ),
              // Gender
              DropdownButtonFormField(
                initialValue: new_pet_gender,
                decoration: InputDecoration(labelText: "Gender"),
                items: [
                  DropdownMenuItem(value: "Male", child: Text("Male")),
                  DropdownMenuItem(value: "Female", child: Text("Female")),
                ],
                onChanged: (value) {
                  setState(() {
                    new_pet_gender = value!;
                  });
                },
              ),
              // Name
              TextFormField(
                // maxLength: 50,
                decoration: const InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  new_pet_name = value!;
                },
              ),

              // DOB
              InputDatePickerFormField(
                firstDate: DateTime(1950),
                lastDate: DateTime.now(),
                fieldHintText: "Date of Birth",
                fieldLabelText: "DoB",
                onDateSaved: (value) {
                  new_pet_dob = value;
                },
              ),
              // Owner Name
              TextFormField(
                // maxLength: 50,
                decoration: const InputDecoration(
                  labelText: "Owner Name",
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  new_pet_owner_name = value!;
                },
              ),
              
              // Owner Contact
              TextFormField(
                maxLength: 10,
                decoration: const InputDecoration(
                  labelText: "Owner Contact Number",
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  new_pet_owner_contact = value!;
                },
              ),
              // Submit Button
              SizedBox(height: 20),
              Center(
                child: FilledButton.tonal(
                  onPressed: () {
                    // TODO add this data to the db, theres no other way to do it sadly
                    print("Submit pressed!");
                    _form_global_key.currentState!.save();
                    print(new_pet_owner_contact);

                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text("Add Pet"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
