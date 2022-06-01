import 'package:flutter/material.dart';
import 'package:team15/Screens/curators.dart';
import 'package:team15/Screens/subcategories.dart';
import 'package:team15/Data/data.dart';
import 'package:team15/Decor/decorations.dart';

/*class Categories {
  Widget categories() {
    return CategoriesList1();
  }
}*/

class Categories extends StatelessWidget {
  Categories({this.onPush});

  final ValueChanged<int>? onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: CategoryList.length,
          itemBuilder: ((BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(10),
              width: 356,
              height: 80,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(38.0),
                ),
                onPressed: () => onPush?.call(index),
                  /*{
                  Route route = MaterialPageRoute(builder: ((context) => SubCat(index)));
                  Navigator.push(context, route);
                },*/
                padding: EdgeInsets.all(10.0),
                color: categoryColors[index],
                textColor: Colors.white,
                child: Text(CategoryList[index].name!,
                    style: TextStyle(fontSize: 28, color: Colors.black)),
              ),
            );
          })
        ),
      ),
    );
  }
}