// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:url_launcher/url_launcher.dart';

import '../components/welcome_button.dart';
import '../components/textfield_container.dart';
import 'login_page.dart';
import '../components/account_check.dart';
import '../components/or_divider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.02),
              SvgPicture.asset('assets/icons/signup.svg',
                  height: size.height * 0.35),
              SizedBox(height: size.height * 0.02),
              TextFieldContainer(
                hintText: 'Username',
                icon: Icons.people,
                size: size,
                onChanged: (value) {},
              ),
              TextFieldContainer(
                hintText: 'Password',
                icon: Icons.lock,
                size: size,
                onChanged: (value) {},
              ),
              SizedBox(height: size.height * 0.01),
              WelcomeButton(
                  text: 'Register',
                  press: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
              SizedBox(height: size.height * 0.04),
              AccountCheck(
                  login: false,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    iconSource: 'assets/icons/twitter.svg',
                    press: () {},
                    // press: () {launch('https://twitter.com')},
                  ),
                  SocialIcon(
                    iconSource: 'assets/icons/facebook.svg',
                    press: () {},
                  ),
                  SocialIcon(
                    iconSource: 'assets/icons/google-plus.svg',
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String iconSource;
  final VoidCallback press;
  const SocialIcon({
    Key? key,
    required this.iconSource,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.purple,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSource,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
