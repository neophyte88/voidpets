import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:voidpets/pet_detail.dart';

class PetCard extends StatelessWidget {
  const PetCard(this.pet_name, this.pet_age, this.pet_type, this.pet_id, {super.key});

  final String pet_name;
  final int pet_age;
  final String pet_type;
  final int pet_id;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
            color: const Color(0XFFECE9EB),
            child: InkWell(
                onTap: () {
          print("Card $pet_name tapped");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PetDetail()),
            );
        },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      pet_type == "cat" ? FontAwesomeIcons.cat : FontAwesomeIcons.dog,
                      size: 40, color: Color(0xFF211C20),
                    ),

                    Text(
                      pet_name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 18, color: Color(0xFF211C20)),
                      
                    ),
                    const SizedBox(height: 1),
                    Text(pet_type),
                    Text("Age: ${pet_age}"),
                  ],
                ),
              ),
            ),
          );
  }
}






// old row code just for future refrence
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Expanded(
      //       child: Card.outlined(
      //         child: InkWell(
      //           child: Container(
      //             padding: EdgeInsets.all(70),
      //             child: Text(
      //               pets[0]['name'],
      //               maxLines: 1,
      //               overflow: TextOverflow.ellipsis,
      //             ),

      //           ),
      //           onTap: () {
      //             print("Card 1 tapped");
      //           },
      //         )
      //       ),
      //     ),
      //     Expanded(
      //       child: Card.outlined(
      //         child: InkWell(
      //           child: Container(
      //             padding: EdgeInsets.all(70),
      //             child: Text(
      //               pets[1]['name'],
      //               maxLines: 1,
      //               overflow: TextOverflow.ellipsis,
      //             ),

      //           ),
      //           onTap: () {
      //             print("Card 2 tapped");
      //           },
      //         )
      //       ),
      //     ),
      //   ],
      // )