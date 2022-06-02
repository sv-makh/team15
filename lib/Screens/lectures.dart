import 'package:flutter/material.dart';
import 'package:team15/Data/data.dart';

class Lectures extends StatelessWidget {
  List<Lection> _futureLections = [];
  List<Lection> _recLections = [];

  DateTime currentDate = DateTime.now();

  void _classifyLections() {
    for (var lect in Lections) {
      if (lect.dateTime!.isAfter(currentDate)) _futureLections.add(lect);
      else _recLections.add(lect);
    }
  }

  @override
  Widget build(BuildContext context) {
    _classifyLections();

    return Container(
      padding: const EdgeInsets.all(10),
      child: Column( children: [
        Row( children: [

        ],
        ),
        ListView.builder(
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
      ),])
    );
  }
}