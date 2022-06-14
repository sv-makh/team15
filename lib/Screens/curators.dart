import 'package:flutter/material.dart';
import 'package:team15/Data/data.dart';
import 'package:team15/Screens/curator_profile.dart';
import 'package:team15/Decor/custom_card.dart';

class Curators extends StatelessWidget {
  int indexCategory = 0;
  int indexSubcategory = 0;

  Curators(int iC, int iSC) {
    indexCategory = iC;
    indexSubcategory = iSC;
  }

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
                return CustomCard(curatorsOfSubcategory[index].avatar,
                    curatorsOfSubcategory[index].name,
                    curatorsOfSubcategory[index].bio,
                    () {
                      Route route = MaterialPageRoute(
                          builder: ((context) => CuratorProfile(
                              indexCategory, indexSubcategory, index)));
                      Navigator.push(context, route);
                    }
                    );
                /*return Card(
                  color: const Color.fromRGBO(126, 239, 220, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38.0),
                  ),
                  child: ListTile(
                    leading: Image.asset(curatorsOfSubcategory[index].avatar),
                    title: Text(curatorsOfSubcategory[index].name),
                    subtitle: Text(curatorsOfSubcategory[index].bio),
                    onTap: () {
                      Route route = MaterialPageRoute(
                          builder: ((context) => CuratorProfile(
                              indexCategory, indexSubcategory, index)));
                      Navigator.push(context, route);
                    },
                  ),
                );*/
              })),
        ));
  }
}
