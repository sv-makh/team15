import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:team15/Data/data.dart';

class LectureSignUp extends StatelessWidget {
  //индекс лекции в массиве Lections из team15/Data/data.dart
  int index;

  LectureSignUp(int this.index);

  //заданные форматы для даты и времени лекции
  final DateFormat formatterDate = DateFormat('dd.MM.yyyy');
  final DateFormat formatterTime = DateFormat('HH:mm');

  //расстояние элементов страницы от края экрана
  double padding = 32.0;

  @override
  Widget build(BuildContext context) {
    Lection lecture = Lections[index];

    double screenWidth = MediaQuery.of(context).size.width;
    double iconSize = ( screenWidth - padding*2 ) / 3;

    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(29, 233, 182, 1),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: screenWidth - padding*2,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder( borderRadius: BorderRadius.circular(38.0))
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromRGBO(126, 239, 220, 1)
            ),
            fixedSize: MaterialStateProperty.all<Size>(Size.fromHeight(100.0)),
          ),
          onPressed: () => {},
          child: Text('Записаться',
                style: const TextStyle(fontSize: 28, color: Colors.black)),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: iconSize,
                height: iconSize,
                child: Image.asset(lecture.icon),
              ),
              Expanded( child: Text(lecture.name,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
            ),
          ],),
          SizedBox(height: 20,),
          Text(lecture.description,
            style: const TextStyle(fontSize: 20)),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Когда',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(formatterDate.format(lecture.dateTime!),
                style: const TextStyle(fontSize: 20))
          ],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Во сколько',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(formatterTime.format(lecture.dateTime!),
                style: const TextStyle(fontSize: 20))
          ],),
        ],
        ),
      )
    );
  }
}