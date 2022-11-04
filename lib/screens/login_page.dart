// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'register_page.dart';
import '../components/welcome_button.dart';
import '../components/account_check.dart';
import '../components/textfield_container.dart';
import 'tabs_screen.dart';

class LoginPage extends StatelessWidget {
  static const routeName = './login-page';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset('assets/icons/login_logo.svg',
                  height: size.height * 0.35),
              SizedBox(height: size.height * 0.02),
              TextFieldContainer(
                hintText: 'Username',
                icon: Icons.people,
                size: size,
                onChanged: (value) {},
              ),
              SizedBox(height: size.height * 0.01),
              TextFieldContainer(
                hintText: 'Password',
                icon: Icons.lock,
                size: size,
                onChanged: (value) {},
              ),
              SizedBox(height: size.height * 0.01),
              WelcomeButton(
                  text: 'Login',
                  press: () {
                    Navigator.of(context)
                        .pushReplacementNamed(TabsScreen.routeName);
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => TabsScreen()));
                  }),
              SizedBox(height: size.height * 0.04),
              AccountCheck(press: () {
                // Navigator.of(context)
                //     .pushNamed(RegisterPage.routeName);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
