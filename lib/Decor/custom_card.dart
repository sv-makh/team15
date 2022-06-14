import 'package:flutter/material.dart';
import 'package:team15/Decor/custom_colors.dart';

class CustomCard extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  Function onTap;

  CustomCard(this.image, this.title, this.subtitle, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157,
      child: Card(
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(38.0),
      ),
      child: Center( child: ListTile(
        leading: Image.asset(image),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: () => onTap,
      )),
    ));
  }
}