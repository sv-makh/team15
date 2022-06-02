import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset('assets/images/profile.png'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Екатерина Смирнова',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(3)),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            height: 100,
            width: 400,
            child: Text(
              'Путешествия, спорт, здоровый образ жизни. Изучаю разработку, планирую создать свою мобильную игру.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Мои направления',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38.0),
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.all(10.0),
                  color: Color.fromRGBO(119, 235, 151, 1),
                  textColor: Colors.white,
                  child: Text("Дизайн",
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38.0),
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.all(10.0),
                  color: Color.fromRGBO(126, 239, 220, 1),
                  textColor: Colors.white,
                  child: Text("Программирование",
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                ),
              ),
            ],
          ),
          Text('Мои лекции',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38.0),
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.all(10.0),
                  color: Color.fromRGBO(126, 239, 220, 1),
                  textColor: Colors.white,
                  child: Text("Создание макетов в Figma",
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38.0),
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.all(10.0),
                  color: Color.fromRGBO(126, 239, 220, 1),
                  textColor: Colors.white,
                  child: Text("Flutter для начинающих",
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(29, 233, 182, 1.0)),
              onPressed: () {},
              child: Text(
                'Настройки',
              ))
        ],
      ),
    ));
  }
}
