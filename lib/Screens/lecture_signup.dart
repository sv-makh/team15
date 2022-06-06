import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:team15/Data/data.dart';

class LectureSignUp extends StatelessWidget {
  Lection lecture;

  LectureSignUp(Lection this.lecture);

  final DateFormat formatterDate = DateFormat('dd.MM.yyyy');
  final DateFormat formatterTime = DateFormat('HH:mm');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(29, 233, 182, 1),),
      body: SingleChildScrollView(
        child: Column( children: [
          Row( children: [
            Image.asset(lecture.icon),
            Text(lecture.name),
          ],),
          Text(lecture.description),
          Row( children: [
            Text('Когда'),
            Text(formatterDate.format(lecture.dateTime!))
          ],),
          Row( children: [
            Text('Во сколько'),
            Text(formatterTime.format(lecture.dateTime!))
          ],),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38.0),
            ),
            onPressed: () => {},
            padding: const EdgeInsets.all(10.0),
            color: Color.fromRGBO(126, 239, 220, 1),
            textColor: Colors.black,
            child: Text('Записаться',
                style: const TextStyle(fontSize: 28, color: Colors.black)),
          ),
        ],
        ),
      ),
    );
  }
}