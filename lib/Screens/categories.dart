import 'package:flutter/material.dart';
import 'package:team15/Data/data.dart';
import 'package:team15/Decor/custom_colors.dart';

//экран на первой вкладке BottomNavigationBar
class Categories extends StatelessWidget {
  Categories({this.onPush});

  final ValueChanged<int>? onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView.builder(
            itemCount: CategoryList.length,
            itemBuilder: ((BuildContext context, int index) {
              return Container(
                  margin: const EdgeInsets.all(10),
                  width: 356,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => onPush?.call(index),
                    child: Text(CategoryList[index].name!,
                        style:
                            const TextStyle(fontSize: 28, color: Colors.black)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          categoryColors[index]!,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(38.0)))),
                  )
              );
            })
        ),
      ),
    );
  }
}
