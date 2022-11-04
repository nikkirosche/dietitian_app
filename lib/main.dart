// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import './screens/welcome_page.dart';
import './screens/login_page.dart';
import './screens/register_page.dart';
import './screens/tabs_screen.dart';
import 'screens/dietitian_screen.dart';
import './screens/favourite_screen.dart';
import './screens/booking_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dietition Finder',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
            .copyWith(secondary: Colors.amber),
        // errorColor: Colors.red,
        fontFamily: 'Montserrat',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              button: TextStyle(color: Colors.white),
            ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          color: Colors.purple,
        ),
      ),
      // home: WelcomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        RegisterPage.routeName: (context) => RegisterPage(),
        LoginPage.routeName: (context) => LoginPage(),
        TabsScreen.routeName: (context) => TabsScreen(),
        DietitianScreen.routeName: (context) => DietitianScreen(),
        BookingScreen.routeName: (context) => BookingScreen(),
        FavouriteScreen.routeName: (context) => FavouriteScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => WelcomePage(),
        );
      },
    );
  }
}
