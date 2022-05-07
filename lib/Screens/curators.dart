import 'package:flutter/material.dart';
import 'package:team15/Data/data.dart';

class Curators {

  Widget curators() {
    return Container(
      child: ListView.builder(
          itemCount: CuratorList.length,
          itemBuilder: ((BuildContext context, int index) {
            return Card(
              color: Color.fromRGBO(126, 239, 220, 1),
              child: ListTile(
                leading: Image.asset(CuratorList[index].avatar),
                title: Text(CuratorList[index].name),
                subtitle: Text(CuratorList[index].bio),
                onTap: () {

                },
              ),
            );
          })
      ),
    );
  }

}