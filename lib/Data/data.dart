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
  List<Curator>? list;

  SubCategory(String n, List<Curator> l) {
    name = n;
    list = l;
  }
}

var Lections = [
  Lection("Создание макетов в Figma", "Пошаговая инструкция", "assets/images/l1.png", DateTime.utc(2022, 06, 1, 12, 0)),
  Lection("Создание макетов в Figma", "Пошаговая инструкция", "assets/images/l1.png", DateTime.utc(2022, 06, 1, 14, 0)),
  Lection("Создание макетов в Figma", "Пошаговая инструкция", "assets/images/l1.png", DateTime.utc(2022, 06, 1, 10, 0)),
  Lection("Регрессионное тестирование приложений", "Полное и частичное, проблемы, выбор тестов", "assets/images/l2.png", DateTime.utc(2022, 06, 2, 12, 0)),
  Lection("Flutter для начинающих", "Разработка мобильных приложений", "assets/images/l3.png", DateTime.utc(2022, 06, 3, 12, 0)),
  Lection("Flutter для начинающих", "Разработка мобильных приложений", "assets/images/l3.png", DateTime.utc(2022, 06, 3, 10, 0)),
  Lection("UX/UI дизайн", "Проектирование пользовательских интерфейсов", "assets/images/l4.png", DateTime.utc(2022, 06, 4, 12, 0))
];


var SubCategoryList1 = [
  SubCategory("Шитьё", CuratorList2),
  SubCategory("Вышивка", CuratorList1),
  SubCategory("Украшения", CuratorList2),
  SubCategory("Керамика", CuratorList1),
];
var SubCategoryList2 = [
  SubCategory("Фитнес", CuratorList2),
  SubCategory("Йога", CuratorList1),
  SubCategory("ЛФК", CuratorList2),
  SubCategory("Пилатес", CuratorList1),
  SubCategory("Стретчинг", CuratorList2),
];
var SubCategoryList3 = [
  SubCategory("SMM", CuratorList2),
  SubCategory("Копирайтер", CuratorList1),
  SubCategory("PR-менеджер", CuratorList2),
  SubCategory("Бренд-менеджер", CuratorList1),
  SubCategory("SEO-оптимизатор", CuratorList2),
  SubCategory("PPC-специалист", CuratorList1),
];
var SubCategoryList4 = [
  SubCategory("Английский", CuratorList2),
  SubCategory("Испанский", CuratorList1),
  SubCategory("Китайский", CuratorList2),
  SubCategory("Японский", CuratorList1),
  SubCategory("Португальский", CuratorList2),
  SubCategory("Норвежский", CuratorList1),
];
var SubCategoryList5 = [
  SubCategory("Европа", CuratorList1),
  SubCategory("США", CuratorList2),
  SubCategory("Латинская Америка", CuratorList1),
  SubCategory("Австралия", CuratorList2),
  SubCategory("Скандинавия", CuratorList1),
  SubCategory("Африка", CuratorList2),
];
var SubCategoryList6 = [
  SubCategory("Графический дизайн", CuratorList2),
  SubCategory("Веб-дизайн", CuratorList1),
  SubCategory("Моушн-дизайн", CuratorList2),
  SubCategory("Дизайн интерьеров", CuratorList1),
  SubCategory("Гейм-дизайн", CuratorList2),
  SubCategory("Продуктовый дизайн", CuratorList1),
];
var SubCategoryList7 = [
  SubCategory("Веб-разработка", CuratorList1),
  SubCategory("Мобильная разработка", CuratorList2),
  SubCategory("Аналитика", CuratorList1)
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

var CuratorList1 = [
  Curator("Инна Мориц", "C#, Xamarin, C++, Andoird NDK", "assets/images/cur1.png", [Lections[0], Lections[1], Lections[2]]),
  Curator("Татьяна Белова", "Flutter, Dart, KMM, Kotlin", "assets/images/cur2.png", [Lections[3]]),
  Curator("Ольга Держиева", "Andpoid, Java, ООП, SOLID", "assets/images/cur3.png", [Lections[4], Lections[5]]),
  Curator("Елена Иванова", "Алгоритмы и структуры данных", "assets/images/cur4.png", [Lections[6]])
];

var CuratorList2 = [
  Curator("София Новикова", "iOS, ObjectiveC, Swift", "assets/images/cur1.png", [Lections[0], Lections[1], Lections[2]]),
  Curator("Василиса Воробьева", "DevOps, CI/CD", "assets/images/cur2.png", [Lections[3]]),
  Curator("Александра Кузнецова", "Manual QA, DevTools, Agile/Scrum", "assets/images/cur3.png", [Lections[4], Lections[5]])
];