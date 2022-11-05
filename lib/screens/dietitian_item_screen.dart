// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'dart:ffi';

import 'package:dietitian_app/widgets/dietitian_item.dart';
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
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final dietitianId = routeArgs['id'];
    var displayDietitian = DUMMY_DIETITIANS.where(
      (data) {
        return data.id.contains(dietitianId);
      },
    ).toList();
    // final selectedDietitian =
    //     DUMMY_DIETITIANS.firstWhere((dietitian) => dietitian.id == dietitianId);
    return Scaffold(
      appBar: AppBar(
        title: Text("Dietitian"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return DietitianItem(
              id: displayDietitian[index].id,
              name: displayDietitian[index].name,
              imageurl: displayDietitian[index].imageUrl,
              experience: displayDietitian[index].experience,
              background: displayDietitian[index].background);
        },
        itemCount: displayDietitian.length,
      ),
    );
  }
}

      // body: SingleChildScrollView(
      //   child: Column(
      //     children: <Widget>[
      //       Container(
      //         height: 350,
      //         width: double.infinity,
      //         child:
      //             Image.network(selectedDietitian.imageUrl, fit: BoxFit.cover),
      //       ),
      //     ],
      //   ),
      // ),