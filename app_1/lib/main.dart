import 'package:app_1/pages/choose_location.dart';
import 'package:app_1/pages/home.dart';
import 'package:app_1/pages/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => LoadingScreen(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation()
    },
  ));
}
