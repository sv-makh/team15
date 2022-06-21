import 'package:flutter/material.dart';
import 'package:team15/Data/data.dart';
import 'package:team15/Decor/custom_colors.dart';

//экран на второй вкладке BottomNavigationBar
class Lectures extends StatefulWidget {
  final Function(int)? onPush;

  Lectures({this.onPush});

  @override
  State<Lectures> createState() => _LecturesState();
}

class _LecturesState extends State<Lectures> {

  //массив будущих лекций
  List<Lection> _futureLections = [];
  //массив лекций в записи
  List<Lection> _recLections = [];
  //массив лекций, которые отображаются на экране, по умолчанию - все
  List<Lection> _showLections = Lections;

  //цвета кнопок для показа лекций, по умолчанию активная(тёмная) первая
  List<Color> _showColor = [
    darkMint,
    lightMint,
    lightMint,
  ];

  //текущая дата
  DateTime currentDate = DateTime.now();

  //распределение всех лекций по массивам на основе их даты
  void _classifyLections() {
    for (var lect in Lections) {
      if (lect.dateTime!.isAfter(currentDate)) { _futureLections.add(lect); }
      else { _recLections.add(lect); }
    }
  }

  //определение цветов кнопок выбора лекций
  //при нажатии кнопки она становится тёмной, остальные - светлыми
  void _showButtonsColor(int activeButton) {
    for (int i = 0; i < 3; i++) {
      if (i == activeButton) { _showColor[i] = darkMint; }
      else { _showColor[i] = lightMint; }
    }
  }

  @override
  void initState() {
    super.initState();
    _classifyLections();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea( child: Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column( children: [
        //кнопки выбора, какие лекции показывать
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _lectionsButton(width: 66, list: Lections, index: 0, name: 'все'),
            _lectionsButton(width: 128, list: _futureLections, index: 1,
                name: 'будущие'),
            _lectionsButton(width: 126, list: _recLections, index: 2,
                name: 'в записи')
          ],
        ),
        Expanded ( child: ListView.builder(
        itemCount: _showLections.length,
        itemBuilder: ((BuildContext context, int index) {

          Lection currentLection = _showLections[index];

          return Container(
              height: 150,
              child: Card(
                color: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(38.0),
                ),
                child: Center( child: ListTile(
                  leading: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                            image: AssetImage(currentLection.icon),
                            fit: BoxFit.fitHeight
                        )
                    ),
                  ),
                  title: Padding( child: Text(currentLection.name,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                    padding: const EdgeInsets.only(bottom: 10),
                  ),
                  subtitle: Text(currentLection.description,
                    style: const TextStyle(fontSize: 20, ),
                  ),
                  onTap: () => widget.onPush?.call(index),//onTap.call,
                )),
              ));

          }
        )
      )),
      ])
    ));
  }

  //виджет кнопки выбора, какие лекции показывать
  Widget _lectionsButton({double width = 0, List<Lection> list = const [],
    int index = 0, String name = ''}) {
    return TextButton(
      onPressed: () => setState(() {
        _showLections = list;
        //изменение цвета кнопок
        _showButtonsColor(index);
      }),
      child: Container(
        width: width,
        height: 36.0,
        child: Center( child: Text(name,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: _showColor[index],
        ),
      ),
    );
  }
}