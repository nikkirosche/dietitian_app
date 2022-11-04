// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const TextFieldContainer({
    Key? key,
    required this.hintText,
    required this.icon,
    //why is this size needed?
    required this.size,
    required this.onChanged,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      width: size.width * 0.7,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 245, 225, 249),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(icon, color: Colors.purple),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
