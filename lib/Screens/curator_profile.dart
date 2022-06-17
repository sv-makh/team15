import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:team15/Data/data.dart';
import 'package:team15/Screens/lecture_signup.dart';
import 'package:team15/Decor/custom_colors.dart';

class CuratorProfile extends StatelessWidget {
  int catIndex;
  int subIndex;
  int curIndex;

  CuratorProfile(this.catIndex, this.subIndex, this.curIndex, {Key? key})
      : super(key: key);

  //ширина кнопки со временем лекции
  double buttonWidth = 160;

  //ширина зазора между кнопками в строке
  double buttonGap = 18;

  @override
  Widget build(BuildContext context) {
    Curator curator = CategoryList[catIndex].list![subIndex].list![curIndex];

    //ширина экрана
    double screenWidth = MediaQuery.of(context).size.width;
    //отстояние от края экрана строки кнопок
    double leftEdge = (screenWidth - buttonWidth * 2 - buttonGap) / 2;

    return Scaffold(
        appBar: AppBar(
          title: Text(curator.name),
          backgroundColor: lightMint,
        ),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              const SizedBox(
                height: 40,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(curator.avatar),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                curator.name,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(3)),
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(10.0),
                height: 100,
                width: 400,
                child: Text(
                  curator.bio,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Свободное время для записи',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              //строки с кнопками для записи на лекцию
              //в каждой строке по две кнопки
              for (int i = 0; i < curator.list!.length / 2; i++)
                _dateTimeRow(i, leftEdge, context)
            ])));
  }

  //виджет строки с кнопками для записи на лекцию
  //i номер строки
  //leftEdge отстояние строки от левого края экрана
  //context контекст экрана CuratorProfile
  Widget _dateTimeRow(int i, double leftEdge, BuildContext context) {
    //куратор, которого показывает данная страница
    Curator curator = CategoryList[catIndex].list![subIndex].list![curIndex];

    //индекс лекции из массива лекций, которые предлагает данный куратор
    //для первой кнопки в строке
    int index = i * 2;

    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: leftEdge,
            ),
            //первая кнопка строки
            _dateTimeButton(curator.list![index], context),
            SizedBox(
              width: buttonGap,
            ),
            //второй кнопки в строке может не быть
            if (index + 1 < curator.list!.length)
              _dateTimeButton(curator.list![index + 1], context)
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  //виджет кнопки записи на лекцию
  //index индекс лекции из массива всех лекций Lections
  //context  контекст экрана CuratorProfile
  Widget _dateTimeButton(int index, BuildContext context) {
    Lection lect = Lections[index];

    final DateFormat formatterTime = DateFormat('HH:mm');
    final DateFormat formatterDate = DateFormat('dd.MM.yyyy');

    return SizedBox(
        width: buttonWidth,
        height: 100,
        child: ElevatedButton(
            onPressed: () {
              Route route = MaterialPageRoute(
                  builder: ((context) => LectureSignUp(index)));
              Navigator.push(context, route);
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0))),
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromRGBO(119, 235, 151, 1)),
            ),
            child: Column(children: [
              const Spacer(),
              Text(formatterDate.format(lect.dateTime!),
                  style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              Text(formatterTime.format(lect.dateTime!),
                  style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              const Spacer(),
            ])));
  }
}
