import 'package:flutter/material.dart';
import 'package:team15/Data/data.dart';
import 'package:team15/Decor/decorations.dart';

class Categories extends StatelessWidget {
  Categories({this.onPush});

  final ValueChanged<int>? onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: CategoryList.length,
          itemBuilder: ((BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(10),
              width: 356,
              height: 80,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(38.0),
                ),
                onPressed: () => onPush?.call(index),
                padding: const EdgeInsets.all(10.0),
                color: categoryColors[index],
                textColor: Colors.white,
                child: Text(CategoryList[index].name!,
                    style: const TextStyle(fontSize: 28, color: Colors.black)),
              ),
            );
          })
        ),
      ),
    );
  }
}