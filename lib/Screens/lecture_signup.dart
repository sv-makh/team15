import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:team15/Data/data.dart';
import 'package:team15/Decor/custom_colors.dart';

//экран записи на лекцию
class LectureSignUp extends StatelessWidget {
  //индекс лекции в массиве Lections из team15/Data/data.dart
  int index;

  LectureSignUp(this.index, {Key? key}) : super(key: key);

  //заданные форматы для даты и времени лекции
  final DateFormat formatterDate = DateFormat('dd.MM.yyyy');
  final DateFormat formatterTime = DateFormat('HH:mm');

  @override
  Widget build(BuildContext context) {
    Lection lecture = Lections[index];

    //расстояние элементов страницы от края экрана
    double padding = 32.0;

    //ширина экрана
    double screenWidth = MediaQuery.of(context).size.width;
    //размер для иконки лекции
    double iconSize = (screenWidth - padding * 2) / 3;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: lightMint,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          width: screenWidth - padding * 2,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38.0))),
              backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
              fixedSize:
                  MaterialStateProperty.all<Size>(const Size.fromHeight(100.0)),
            ),
            onPressed: () => {},
            child: const Text('Записаться',
                style: TextStyle(fontSize: 28, color: Colors.black)),
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
                  Expanded(
                      child: Text(lecture.name,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold))),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(lecture.description, style: const TextStyle(fontSize: 20)),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Когда',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text(formatterDate.format(lecture.dateTime!),
                      style: const TextStyle(fontSize: 20))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Во сколько',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text(formatterTime.format(lecture.dateTime!),
                      style: const TextStyle(fontSize: 20))
                ],
              ),
            ],
          ),
        ));
  }
}
