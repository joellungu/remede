import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remede/vues/accueil.dart';
import 'package:remede/vues/splash.dart';

import 'const/constante.dart';
import 'vues/login/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.teal, // navigation bar color
      statusBarColor: Colors.teal // status bar color
      ));
  //
  runApp(
    Remede(
      vue: Splash(),
    ),
  );
  //
  load();
}

Future<void> load() async {
  Timer(const Duration(seconds: 3), () async {
    if (false) {
      runApp(
        Remede(
          vue: Login(),
        ),
      );
    } else {
      runApp(Remede(
        vue: Accueil(),
      ));
    }
  });
}

class Remede extends StatelessWidget {
  Remede({Key? key, this.vue}) : super(key: key);

  Widget? vue;
  static Conts conts = Conts();
  static Map<String, dynamic> Transporteur = {"soustitre":"Sécretariat Medical"};
  static bool b1 = true;
  static bool b2 = false;
  static bool b3 = false;
  static bool b4 = false;
  static bool b5 = false;
  static bool b6 = false;
  static bool b7 = false;
  static bool b8 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remède',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        primarySwatch: Colors.teal,
      ),
      home: vue,
    );
  }
}
