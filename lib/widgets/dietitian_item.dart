// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dietitian_app/screens/dietitian_item_screen.dart';
import 'package:flutter/material.dart';
import '../models/dietitian.dart';

class DietitianItem extends StatelessWidget {
  final String id;
  final String name;
  final String imageurl;
  final Experience experience;
  final String background;

  DietitianItem({
    required this.id,
    required this.name,
    required this.imageurl,
    required this.experience,
    required this.background,
  });

  void selectDietitian(BuildContext context) {
    Navigator.of(context).pushNamed(
      DietitianItemScreen.routeName,
      arguments: {
        'id': id,
        'name': name,
        'image': imageurl,
        'experience': experience,
        'background': background,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectDietitian(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          name,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 242, 188, 246),
              Color.fromARGB(255, 245, 127, 254)
            ],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
