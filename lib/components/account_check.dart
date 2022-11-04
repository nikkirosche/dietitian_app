// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';

class AccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? 'Do not have an account?' : 'Already have an account?',
          style: TextStyle(color: Colors.purple),
        ),
        GestureDetector(
          //Check on when to put parenthesis for onTap, clarify.
          //no method function written yet to check username??
          onTap: press,
          child: Text(login ? ' Sign Up!' : ' Login!',
              style:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
