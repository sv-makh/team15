import 'package:flutter/material.dart';

List<Color?> categoryColors = [
  Color.fromRGBO(229, 82, 144, 1),
  Color.fromRGBO(229, 100, 82, 1),
  Color.fromRGBO(248, 145, 71, 1),
  Color.fromRGBO(229, 197, 82, 1),
  Color.fromRGBO(89, 235, 105, 1),
  Color.fromRGBO(119, 235, 151, 1),
  Color.fromRGBO(126, 239, 220, 1),
];

List<Color?> endColors = [
  Color.fromRGBO(226, 96, 151, 1),
  Color.fromRGBO(221, 126, 113, 1),
  Color.fromRGBO(234, 202, 178, 1),
  Color.fromRGBO(214, 207, 183, 1),
  Color.fromRGBO(176, 228, 182, 1),
  Color.fromRGBO(201, 222, 207, 1),
  Color.fromRGBO(162, 231, 219, 1),
];

const Color buttonColor = Color.fromRGBO(126, 239, 220, 1);

const Color darkMint = Color.fromRGBO(0, 181, 133, 1);
const Color lightMint = Color.fromRGBO(29, 233, 182, 1);

//функция возвращает цвет подкатегории
//параметры:
//itemIndex - номер данной подкатегории в массиве (от 0 до length-1)
//length - длина массива (количество подкатегорий в категории)
//catIndex - индекс категории (определяет начало и конец градиента,
// т. е. цвета из массивов categoryColors и endColors)
Color itemColorInGradient(int itemIndex, int length, int catIndex) {
  //цвет первой подкатегории (совпадает с цветом категории из categoryColors)
  Color _startColor = categoryColors[catIndex]!;
  //цвет последней подкатегории (из endColors)
  Color _endColor = endColors[catIndex]!;
  //позиция подкатегории между 0 и 1, где 0 соответствует itemIndex=0, а
  //1 - itemIndex=length - 1
  double _position = itemIndex / (length - 1);
  return Color.lerp(_startColor, _endColor, _position)!;
}