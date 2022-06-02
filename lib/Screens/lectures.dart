import 'package:flutter/material.dart';
import 'package:team15/Data/data.dart';

class Lectures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: Lections.length,
        itemBuilder: ((BuildContext context, int index) {

          Lection currentLection = Lections[index];

          return Card(
            color: const Color.fromRGBO(126, 239, 220, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38.0),
            ),
            child: ListTile(
              leading: Image.asset(currentLection.icon),
              title: Text(currentLection.name),
              subtitle: Text(currentLection.description),
              onTap: () {},
            ),
            );
          }
        )
      ),
    );
  }
}