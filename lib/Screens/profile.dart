import 'package:flutter/material.dart';

class Profile {
  Widget profile() {
    return User();
  }
}

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset('assets/images/profile.png'),
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
            width: 350,
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
          Text('Мои лекции',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          TextButton(onPressed: () {}, child: Text('Настройки'))
        ],
      ),
    );
  }
}
