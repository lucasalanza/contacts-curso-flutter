//este arq contem  startup para android

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:contacts/android/styles.dart';
import 'package:contacts/android/views/home.view.dart';
import 'package:contacts/android/views/splash.view.dart';
// import 'package:contacts/android/views/splash.view.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Contacts',
        debugShowCheckedModeBanner: false,
        theme: androidTheme(),
        home: SplashView() //HomeView(),
        );
  }
}
