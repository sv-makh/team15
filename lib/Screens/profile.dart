import 'package:flutter/material.dart';
import 'package:team15/Decor/custom_colors.dart';
import 'package:team15/Data/user_data.dart';

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
            child: Image.asset(user1.avatar),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            user1.name,
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
              user1.bio,
              style: const TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Мои лекции',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          for (int i = 0; i < user1.lectList.length; i++) _lectCard(i),
          const Text('Мои направления',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          for (int i = 0; i < user1.catList.length; i++) _catCard(i),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(lightMint)),
              onPressed: () {},
              child: const Text(
                'Настройки',
              ))
        ],
      ),
    ));
  }

  //виджет для карточки лекции
  Widget _lectCard(int index) {
    return Container(
        margin: const EdgeInsets.all(10),
        height: 80,
        width: 356,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(user1.lectList[index].name,
              style: const TextStyle(fontSize: 20, color: Colors.black)),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(38.0),
                ),
              )),
        ));
  }

  //виджет для карточки направления
  Widget _catCard(int index) {
    return Container(
        margin: const EdgeInsets.all(10),
        height: 80,
        width: 356,
        child: ElevatedButton(
            onPressed: () {},
            child: Text(user1.catList[index].name,
                style: const TextStyle(fontSize: 20, color: Colors.black)),
            style: ButtonStyle(
              //цвета карточек - из массива categoryColors в обратном направлении
                backgroundColor: MaterialStateProperty.all<Color>(
                    categoryColors[categoryColors.length - index - 1]!),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(38.0),
                )))));
  }
}
