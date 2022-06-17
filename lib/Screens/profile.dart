import 'package:flutter/material.dart';
import 'package:team15/Decor/custom_colors.dart';

//экран на третьей вкладке BottomNavigationBar
class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Image.asset('assets/images/profile.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Екатерина Смирнова',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
            child: const Text(
              'Путешествия, спорт, здоровый образ жизни. Изучаю разработку, планирую создать свою мобильную игру.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Мои направления',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Дизайн",
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(119, 235, 151, 1)
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38.0),
                      )
                    )
                  ),
                )
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Программирование",
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(119, 235, 151, 1)
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(38.0),
                          )
                      )
                  ),
                )
              ),
            ],
          ),
          const Text('Мои лекции',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Создание макетов в Figma",
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        buttonColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38.0),),
                    )
                  ),
                )
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Flutter для начинающих",
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          buttonColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(38.0),),
                      )
                  ),
                )
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(lightMint)
              ),
              onPressed: () {},
              child: const Text(
                'Настройки',
              ))
        ],
      ),
    ));
  }
}
