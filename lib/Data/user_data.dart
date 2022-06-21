import 'package:team15/Data/data.dart';

class User {
  String name;
  String bio;
  String avatar;
  List<Category> catList;
  List<Lection> lectList;

  User(this.name, this.bio, this.avatar, this.catList, this.lectList);
}

User user1 = User(
  "Екатерина Смирнова",
  "Путешествия, спорт, здоровый образ жизни. Изучаю разработку, планирую создать свою мобильную игру.",
  "assets/images/profile.png",
  [CategoryList[5], CategoryList[6]],
  [Lections[0], Lections[4]],
);