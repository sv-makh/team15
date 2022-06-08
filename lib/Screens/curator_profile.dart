import 'package:flutter/material.dart';
import 'package:team15/Data/data.dart';

class CuratorProfile extends StatelessWidget {
  int catIndex;
  int subIndex;
  int curIndex;

  CuratorProfile(this.catIndex, this.subIndex, this.curIndex, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Curator curator = CategoryList[catIndex].list![subIndex].list![curIndex];

    return Scaffold(
        appBar: AppBar(
          title: Text(curator.name),
          backgroundColor: const Color.fromRGBO(29, 233, 182, 1),
        ),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              const SizedBox(
                height: 40,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(curator.avatar),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                curator.name,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(3)),
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(10.0),
                height: 100,
                width: 400,
                child: Text(
                  curator.bio,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Свободное время для записи',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
            ])
        )
    );
  }
}
