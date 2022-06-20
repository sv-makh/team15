import 'package:flutter/material.dart';
import 'package:team15/Data/data.dart';
import 'package:team15/Decor/custom_colors.dart';

class SubCat extends StatelessWidget {
  final int index;
  final Function(int, int)? onPush;

  SubCat(this.index, {this.onPush});

  @override
  Widget build(BuildContext context) {
    List<SubCategory>? currentSubCategoryList = CategoryList[index].list;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView.builder(
            itemCount: currentSubCategoryList!.length,
            itemBuilder: ((BuildContext context, int subIndex) {
              //вычисление цвета подкатегории
              Color _subColor = itemColorInGradient(
                  subIndex, currentSubCategoryList.length, index);

              return Container(
                  margin: const EdgeInsets.all(10),
                  width: 356,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => onPush?.call(index, subIndex),
                    child: Text(currentSubCategoryList[subIndex].name!,
                        style:
                            const TextStyle(fontSize: 28, color: Colors.black)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            _subColor),//categoryColors[index]!),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(38.0)))),
                  ));
            })),
      ),
    );
  }
}
