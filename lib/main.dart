import 'dart:io';
import 'package:contacts/android/android.app.dart';
import 'package:contacts/ios/Ios.app.dart';
import 'package:flutter/material.dart'; // especifico android
//import 'package:flutter/cupertino.dart'; //especifico Ios
//import 'package:flutter/widgets.dart'; //mescla dos 2

void main() {
  if (!Platform.isIOS) {
    //chama a renderização do IOS
    runApp(
      IOSApp(),
    );
  } else {
    //renderiza para Android
    runApp(const AndroidApp());
  }
}
