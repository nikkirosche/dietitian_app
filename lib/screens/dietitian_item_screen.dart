// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../dummy_data.dart';

class DietitianItemScreen extends StatelessWidget {
  static const routeName = '/dietitian-detail';

  @override
  Widget build(BuildContext context) {
    final dietitianId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedDietitian =
        DUMMY_DIETITIANS.firstWhere((dietitian) => dietitian.id == dietitianId);
    return Container();
  }
}
