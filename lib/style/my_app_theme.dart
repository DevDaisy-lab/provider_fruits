import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final myAppTheme = ThemeData(
  primarySwatch: Colors.green,
  textTheme: const TextTheme(
    headline5: TextStyle(
      // fontFamily: 'Arimo',
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: Colors.white,
    ),
    headline4: TextStyle(
      // fontFamily: 'Arimo',
      fontWeight: FontWeight.w600,
      fontSize: 17,
      color: Colors.green,
    ),
    headline3: TextStyle(
      // fontFamily: 'Arimo',
      fontWeight: FontWeight.w600,
      fontSize: 17,
      color: CupertinoColors.systemGreen,
    ),
    headline2: TextStyle(
      // fontFamily: 'Arimo',
      fontWeight: FontWeight.w400,
      fontSize: 17,
      color: Colors.green,
    ),
    headline1: TextStyle(
      // fontFamily: 'Arimo',
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.white,
    ),
  ),
);
