// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF2AACFF);
const Color accentColor = Colors.white;

ThemeData androidTheme() {
  return ThemeData(
    brightness: Brightness.light,
    fontFamily: "Poppins", // Defina a fonte aqui para aplicar em todo o texto
    primarySwatch: MaterialColor(
      primaryColor.value,
      <int, Color>{
        50: primaryColor,
        100: primaryColor,
        200: primaryColor,
        300: primaryColor,
        400: primaryColor,
        500: primaryColor,
        600: primaryColor,
        700: primaryColor,
        800: primaryColor,
        900: primaryColor,
      },
    ),
    accentColor: accentColor,
    textTheme: TextTheme(
      bodyText1:
          TextStyle(), // Adicione estilos específicos aqui, se necessário
      bodyText2: TextStyle(),
      button: TextStyle(),
      caption: TextStyle(),
      headline6:
          TextStyle(), // No Flutter atual, o headline6 é usado para TextFields
      overline: TextStyle(),
      subtitle1: TextStyle(),
      subtitle2: TextStyle(),
      headline1: TextStyle(),
      headline2: TextStyle(),
      headline3: TextStyle(),
      headline4: TextStyle(),
      headline5: TextStyle(),
    ),
  );
}

const brightness = Brightness.light;
// const primaryColor = const Color(0xFF2AACFF);
// const accentColor = const Color(0xFFFFFFFF);

// ThemeData androidTheme() {
//   return ThemeData(
//     brightness: brightness,
//     textTheme: new TextTheme(
//       body1: new TextStyle(
//         fontFamily: "Poppins",
//       ),
//       body2: TextStyle(
//         fontFamily: "Poppins",
//       ),
//       button: TextStyle(
//         fontFamily: "Poppins",
//       ),
//       caption: TextStyle(
//         fontFamily: "Poppins",
//       ),
//       display1: TextStyle(
//         fontFamily: "Poppins",
//       ),
//       display2: TextStyle(
//         fontFamily: "Poppins",
//       ),
//       display3: TextStyle(
//         fontFamily: "Poppins",
//       ),
//       display4: TextStyle(
//         fontFamily: "Poppins",
//       ),
//       headline: TextStyle(
//         fontFamily: "Poppins",
//       ),
//       overline: TextStyle(
//         fontFamily: "Poppins",
//       ),
//       subhead: TextStyle(
//         fontFamily: "Poppins",
//       ),
//       subtitle: TextStyle(
//         fontFamily: "Poppins",
//       ),
//       title: TextStyle(
//         fontFamily: "Poppins",
//       ),
//     ),
//     primaryColor: primaryColor,
//     accentColor: accentColor,
//   );
// }
