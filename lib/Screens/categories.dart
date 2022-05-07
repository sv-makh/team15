import 'package:flutter/material.dart';

class Categories {
  Widget categories() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 356,
            height: 80,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38.0),
              ),
              onPressed: () {},
              padding: EdgeInsets.all(10.0),
              color: Colors.pink[400],
              textColor: Colors.white,
              child: Text("Рукоделие",
                  style: TextStyle(fontSize: 28, color: Colors.black)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 356,
            height: 80,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38.0),
              ),
              onPressed: () {},
              padding: EdgeInsets.all(10.0),
              color: Color.fromRGBO(229, 100, 82, 1),
              textColor: Colors.white,
              child: Text("Спорт",
                  style: TextStyle(fontSize: 28, color: Colors.black)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 356,
            height: 80,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38.0),
              ),
              onPressed: () {},
              padding: EdgeInsets.all(10.0),
              color: Color.fromRGBO(248, 145, 71, 1),
              textColor: Colors.white,
              child: Text("Маркетинг",
                  style: TextStyle(fontSize: 28, color: Colors.black)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 356,
            height: 80,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38.0),
              ),
              onPressed: () {},
              padding: EdgeInsets.all(10.0),
              color: Colors.yellow[400],
              textColor: Colors.white,
              child: Text("Иностранные языки",
                  style: TextStyle(fontSize: 28, color: Colors.black)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 356,
            height: 80,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38.0),
              ),
              onPressed: () {},
              padding: EdgeInsets.all(10.0),
              color: Color.fromRGBO(89, 235, 105, 1),
              textColor: Colors.white,
              child: Text("Эммиграция",
                  style: TextStyle(fontSize: 28, color: Colors.black)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 356,
            height: 80,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38.0),
              ),
              onPressed: () {},
              padding: EdgeInsets.all(10.0),
              color: Color.fromRGBO(119, 235, 151, 1),
              textColor: Colors.white,
              child: Text("Дизайн",
                  style: TextStyle(fontSize: 28, color: Colors.black)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 356,
            height: 80,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38.0),
              ),
              onPressed: () {},
              padding: EdgeInsets.all(10.0),
              color: Color.fromRGBO(126, 239, 220, 1),
              textColor: Colors.white,
              child: Text("Программирование",
                  style: TextStyle(fontSize: 28, color: Colors.black)),
            ),
          ),
        ]))));
  }
}
