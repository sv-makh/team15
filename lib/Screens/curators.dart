import 'package:flutter/material.dart';
import 'package:team15/Data/data.dart';
import 'package:team15/Screens/curator_profile.dart';
import 'package:team15/Decor/custom_colors.dart';

class Curators extends StatelessWidget {
  final int indexCategory;
  final int indexSubcategory;
  final Function(int, int, int)? onPush;

  Curators(this.indexCategory, this.indexSubcategory, {this.onPush});

  @override
  Widget build(BuildContext context) {
    List<Curator>? curatorsOfSubcategory =
        CategoryList[indexCategory].list![indexSubcategory].list;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Список кураторов'),
          backgroundColor: const Color.fromRGBO(29, 233, 182, 1),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: curatorsOfSubcategory!.length,
              itemBuilder: ((BuildContext context, int index) {
                Curator curator = curatorsOfSubcategory[index];

                return Container(
                    height: 150,
                    child: Card(
                      color: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38.0),
                      ),
                      child: Center( child: ListTile(
                        leading: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                  image: AssetImage(curator.avatar),
                                  fit: BoxFit.fitHeight
                              )
                          ),
                        ),
                        title: Padding( child: Text(curator.name,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                          padding: const EdgeInsets.only(bottom: 10),
                        ),
                        subtitle: Text(curator.bio,
                          style: TextStyle(fontSize: 20, ),
                        ),
                        onTap: () => onPush?.call(indexCategory, indexSubcategory, index),
                      )),
                    ));
              })),
        ));
  }
}
