// ignore_for_file: use_key_in_widget_constructors, unused_field, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/dietitian_item.dart';

class DietitianScreen extends StatefulWidget {
  static const routeName = '/dietition-screen';

  @override
  State<DietitianScreen> createState() => _DietitianScreenState();
}

class _DietitianScreenState extends State<DietitianScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_DIETITIANS
          .map(
            (data) => DietitianItem(
                data.id, data.name, data.imageUrl, data.experience),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
