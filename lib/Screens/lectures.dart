import 'package:flutter/material.dart';
import 'package:team15/Data/data.dart';

class Lectures extends StatefulWidget {
  @override
  State<Lectures> createState() => _LecturesState();
}

class _LecturesState extends State<Lectures> {
  List<Lection> _futureLections = [];
  List<Lection> _recLections = [];
  List<Lection> _showLections = Lections;

  Color _actColor = Color.fromRGBO(0, 181, 133, 1);
  Color _inActColor = Color.fromRGBO(29, 233, 182, 1);
  List<Color> _showColor = [
    Color.fromRGBO(0, 181, 133, 1),
    Color.fromRGBO(29, 233, 182, 1),
    Color.fromRGBO(29, 233, 182, 1),
  ];
  
  DateTime currentDate = DateTime.now();

  void _classifyLections() {
    for (var lect in Lections) {
      if (lect.dateTime!.isAfter(currentDate)) _futureLections.add(lect);
      else _recLections.add(lect);
    }
  }

  void _showButtonsColor(int activeButton) {
    for (int i = 0; i < 3; i++) {
      if (i == activeButton) _showColor[i] = _actColor;
      else _showColor[i] = _inActColor;
    }
  }

  @override
  void initState() {
    super.initState();
    _classifyLections();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(10),
      child: Column( children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _lectionsButton(width: 66, list: Lections, index: 0, name: 'все'),
            _lectionsButton(width: 128, list: _futureLections, index: 1,
                name: 'будущие'),
            _lectionsButton(width: 126, list: _recLections, index: 2,
                name: 'в записи')
          /*TextButton(
            onPressed: () => setState(() {
              _showLections = Lections;
              _showButtonsColor(0);
            }),
            child: Container(
              width: 66.0,
              height: 36.0,
              child: Center( child: Text('все',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: _showColor[0],
              ),
            ),
          ),
          TextButton(
            onPressed: () => setState(() {
              _showLections = _futureLections;
              _showButtonsColor(1);
            }),
            child: Container(
              width: 128.0,
              height: 36.0,
              child: Center( child: Text('будущие',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: _showColor[1],
              ),
            ),
          ),
          TextButton(
            onPressed: () => setState(() {
              _showLections = _recLections;
              _showButtonsColor(2);
            }),
            child: Container(
              width: 126.0,
              height: 36.0,
              child: Center( child: Text('в записи',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: _showColor[2],
              ),
            ),
          ),*/
        ],
        ),
        Expanded ( child: ListView.builder(
        itemCount: _showLections.length,
        itemBuilder: ((BuildContext context, int index) {

          Lection currentLection = _showLections[index];

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
      )),
      ])
    );
  }
  
  Widget _lectionsButton({double width: 0, List<Lection> list: const [],
    int index: 0, String name: ''}) {
    return TextButton(
      onPressed: () => setState(() {
        _showLections = list;
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