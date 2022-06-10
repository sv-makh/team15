import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:team15/Data/data.dart';

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
    double leftEdge = ( screenWidth - buttonWidth * 2 - buttonGap ) / 2;

    return Scaffold(
        appBar: AppBar(
          title: Text(curator.name),
          backgroundColor: const Color.fromRGBO(29, 233, 182, 1),
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
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
              for (int i =  0; i <= curator.list!.length ~/ 2; i++) _timeRow(i, leftEdge)
            ])
        )
    );
  }

  Widget _timeRow(int i, double leftEdge) {
    Curator curator = CategoryList[catIndex].list![subIndex].list![curIndex];

    int index = i * 2;

    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: leftEdge,
            ),
            _timeButton(Lections[ curator.list![index] ]),
            SizedBox(
              width: buttonGap,
            ),
            if (index + 1 < curator.list!.length) _timeButton( Lections[ curator.list![index + 1] ] )
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  Widget _timeButton(Lection lect) {
    final DateFormat formatterTime = DateFormat('HH:mm');
    final DateFormat formatterDate = DateFormat('dd.MM.yyyy');

    return SizedBox(
      width: buttonWidth,
      height: 100,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36.0))),
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromRGBO(119, 235, 151, 1)),
        ),
        child: Column( children: [
          Spacer(),
          Text(formatterDate.format(lect.dateTime!),
            style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
          Text(formatterTime.format(lect.dateTime!),
              style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
          Spacer(),
        ])
    ));
  }
}

