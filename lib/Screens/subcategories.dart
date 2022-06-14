import 'package:flutter/material.dart';
import 'package:team15/Screens/curators.dart';
import 'package:team15/Data/data.dart';
import 'package:team15/Decor/custom_colors.dart';

class SubCat extends StatelessWidget {
  int index = 0;

  SubCat(int i) {
    index = i;
  }

  @override
  Widget build(BuildContext context) {
    List<SubCategory>? currentSubCategoryList = CategoryList[index].list;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: currentSubCategoryList!.length,
            itemBuilder: ((BuildContext context, int subIndex) {
              return Container(
                margin: const EdgeInsets.all(10),
                width: 356,
                height: 80,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38.0),
                  ),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: ((context) => Curators(index, subIndex)));
                    Navigator.push(context, route);
                  },
                  padding: EdgeInsets.all(10.0),
                  color: categoryColors[index],
                  textColor: Colors.white,
                  child: Text(currentSubCategoryList[subIndex].name!,
                      style: const TextStyle(fontSize: 28, color: Colors.black)),
                ),
              );
            })
        ),
      ),
    );
  }
}