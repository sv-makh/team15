class Lection {
  String name = "";
  String description = "";
  String icon = "";
  DateTime? dateTime;

  Lection(String n, String d, String i, DateTime dt) {
    name = n;
    description = d;
    icon = i;
    dateTime = dt;
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
  Lection("Создание макетов в Figma", "Пошаговая инструкция", "assets/images/l1.png", DateTime.utc(2022, 06, 1, 12, 0)),
  Lection("Регрессионное тестирование приложений", "Полное и частичное, проблемы, выбор тестов", "assets/images/l2.png", DateTime.utc(2022, 06, 2, 12, 0)),
  Lection("Flutter для начинающих", "Разработка мобильных приложений", "assets/images/l3.png", DateTime.utc(2022, 06, 3, 12, 0)),
  Lection("UX/UI дизайн", "Проектирование пользовательских интерфейсов", "assets/images/l4.png", DateTime.utc(2022, 06, 4, 12, 0))
];


var SubCategoryList1 = [
  SubCategory("Шитьё", []),
  SubCategory("Вышивка", []),
  SubCategory("Украшения", []),
  SubCategory("Керамика", []),
];
var SubCategoryList2 = [
  SubCategory("Фитнес", []),
  SubCategory("Йога", []),
  SubCategory("ЛФК", []),
  SubCategory("Пилатес", []),
  SubCategory("Стретчинг", []),
];
var SubCategoryList3 = [
  SubCategory("SMM", []),
  SubCategory("Копирайтер", []),
  SubCategory("PR-менеджер", []),
  SubCategory("Бренд-менеджер", []),
  SubCategory("SEO-оптимизатор", []),
  SubCategory("PPC-специалист", []),
];
var SubCategoryList4 = [
  SubCategory("Английский", []),
  SubCategory("Испанский", []),
  SubCategory("Китайский", []),
  SubCategory("Японский", []),
  SubCategory("Португальский", []),
  SubCategory("Норвежский", []),
];
var SubCategoryList5 = [
  SubCategory("Европа", []),
  SubCategory("США", []),
  SubCategory("Латинская Америка", []),
  SubCategory("Австралия", []),
  SubCategory("Скандинавия", []),
  SubCategory("Африка", []),
];
var SubCategoryList6 = [
  SubCategory("Графический дизайн", [LectionList[0], LectionList[3]]),
  SubCategory("Веб-дизайн", []),
  SubCategory("Моушн-дизайн", []),
  SubCategory("Дизайн интерьеров", []),
  SubCategory("Гейм-дизайн", []),
  SubCategory("Продуктовый дизайн", []),
];
var SubCategoryList7 = [
  SubCategory("Веб-разработка", []),
  SubCategory("Мобильная разработка", []),
  SubCategory("Аналитика", [])
];

var CategoryList = [
  Category("Рукоделие", SubCategoryList1),
  Category("Спорт", SubCategoryList2),
  Category("Маркетинг", SubCategoryList3),
  Category("Иностранные языки", SubCategoryList4),
  Category("Эмиграция", SubCategoryList5),
  Category("Дизайн", SubCategoryList6),
  Category("Программирование", SubCategoryList7),
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
  Curator("Ольга Держиева", "Andpord, Java, ООП, SOLID", "assets/images/cur3.png", []),
  Curator("Елена Иванова", "Алгоритмы и структуры данных", "assets/images/cur4.png", [])
];

