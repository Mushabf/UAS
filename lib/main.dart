import 'package:aritmatika/Login/login2.dart';
import 'package:aritmatika/audioplay/audioplayers1.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'bangun_datar.dart';
import 'bangun_ruang.dart';
import 'vidio.dart';
// Bangun Datar

import 'bangun_datar/belahketupat.dart';
// Bangun Ruang

import 'bangun_ruang/kerucut.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: "Alat Serbaguna",
        theme:  ThemeData(primarySwatch: Colors.blue),
        home:  Login2(),
        routes: <String, WidgetBuilder>{
          '/audioplayers1': (BuildContext context) =>  AudioPlayer1(),
          // '/vidio': (BuildContext context) =>  Vidio(),
          '/bangunDatar': (BuildContext context) => BangunDatar(),
          '/bangunRuang': (BuildContext context) => BangunRuang(),
          // Bangun Datar
         
          '/belahketupat': (BuildContext context) => BelahKetupat(),
          // Bangun Ruang
         
        });
  }
}
