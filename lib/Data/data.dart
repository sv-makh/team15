class Lection {
  String name = "";
  String description = "";
  String icon = "";

  Lection(String n, String d, String i) {
    name = n;
    description = d;
    icon = i;
  }
}

class Category {
  String? name;
  List<SubCategory>? list;

  Category(String n, List<SubCategory> l) {
    name = n;
    list = l;
  }
}

class SubCategory {
  String? name;
  List<Lection>? list;

  SubCategory(String n, List<Lection> l) {
    name = n;
    list = l;
  }
}

var LectionList = [
  Lection("Создание макетов в Figma", "Пошаговая инструкция", ""),
  Lection("Регрессионное тестирование приложений", "Полное и частичное, проблемы, выбор тестов", ""),
  Lection("Flutter для начинающих", "Разработка мобильных приложений", ""),
  Lection("UX/UI дизайн", "Проектирование пользовательских интерфейсов", "")
];

var SubCategoryList1 = [
  SubCategory("Веб-разработка", []),
  SubCategory("Мобильная разработка", []),
];
var SubCategoryList2 = [
  SubCategory("Графический дизайн", [LectionList[0], LectionList[4]]),
];

var CategoryList = [
  Category("Рукоделие", []),
  Category("Спорт", []),
  Category("Маркетинг", []),
  Category("Иностранные языки", []),
  Category("Эмиграция", []),
  Category("Дизайн", SubCategoryList2),
  Category("Программирование", SubCategoryList1),
];

class User {
  String? name;
  String? bio;
  String? avatar;
  List<Lection>? listLect;
  List<Category>? listCat;

  User(String n, String b, String a, List<Lection> lL, List<Category> lC) {
    name = n;
    bio = b;
    avatar = a;
    listLect = lL;
    listCat = lC;
  }
}

class Curator {
  String name = "";
  String bio = "";
  String avatar = "";
  List<Lection>? list;

  Curator(String n, String b, String a, List<Lection> l) {
    name = n;
    bio = b;
    avatar = a;
    list = l;
  }
}

var CuratorList = [
  Curator("Инна Мориц", "C#, Xamarin, C++, Andoird NDK", "assets/images/cur1.png", []),
  Curator("Татьяна Белова", "Flutter, Dart, KMM, Kotlin", "assets/images/cur2.png", []),
  Curator("Ольга Держиева", "Йога в Лондоне", "assets/images/cur3.png", []),
  Curator("Елена Иванова", "Керамика и дизайн интерьера", "assets/images/cur4.png", [])
];

