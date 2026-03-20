// Main
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PetInfoContainer extends StatelessWidget {
  const PetInfoContainer(this.info_label, this.info_data, {super.key});

  final String info_label;
  final String info_data;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      color: const Color(0XFFECE9EB),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(info_label, style: TextStyle(fontSize: 20)),
              Text(info_data, style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
