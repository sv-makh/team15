import 'package:flutter/material.dart';
import 'package:team15/Data/data.dart';

class Lectures {

  Widget lectures() {
    return Container(
      child: ListView.builder(
          itemCount: LectionList.length,
          itemBuilder: ((BuildContext context, int index) {
            return Card(
              color: Color.fromRGBO(126, 239, 220, 1),
              child: ListTile(
                //leading: Image.asset(LectionList[index].name),
                title: Text(LectionList[index].name),
                subtitle: Text(LectionList[index].description),
                onTap: () {

                },
              ),
            );
          })
      ),
    );
  }

}