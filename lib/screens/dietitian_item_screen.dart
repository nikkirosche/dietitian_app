// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../dummy_data.dart';

class DietitianItemScreen extends StatefulWidget {
  static const routeName = '/dietitian-detail';

  @override
  State<DietitianItemScreen> createState() => _DietitianItemScreenState();
}

class _DietitianItemScreenState extends State<DietitianItemScreen> {
  @override
  Widget build(BuildContext context) {
    final dietitianId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedDietitian =
        DUMMY_DIETITIANS.firstWhere((dietitian) => dietitian.id == dietitianId);
    return Scaffold(
        appBar: AppBar(
          title: Text("Dietitian"),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              height: 350,
              width: double.infinity,
              child:
                  Image.network(selectedDietitian.imageUrl, fit: BoxFit.cover),
            ),
          ],
        )));
  }
}
