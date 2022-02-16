import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remede/vues/accueil.dart';
import 'package:remede/vues/splash.dart';
import 'const/codeui.dart';
import 'const/constante.dart';
import 'vues/login/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor:
          Remede.codeUI.couleurPrincipale, // navigation bar color
      statusBarColor: Remede.codeUI.couleurPrincipale, // status bar color
    ),
  );
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
    if (true) {
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

  static CodeUI codeUI = CodeUI();

  Widget? vue;
  static Conts conts = Conts();
  static Map<String, dynamic> Transporteur = {
    "soustitre": "Nouveau dossier médical",
    "vue": 1,
  };
  static bool b1 = true;
  static bool b2 = false;
  static bool b3 = false;
  static bool b4 = false;
  static bool b5 = false;
  static bool b6 = false;
  static bool b7 = false;
  static bool b8 = false;

  //MaterialColor gojekSwatch = Colours.swatch('#157247');

  Map<int, Color> couleur = {
    50: Color.fromRGBO(21, 114, 71, .1),
    100: Color.fromRGBO(21, 114, 71, .2),
    200: Color.fromRGBO(21, 114, 71, .3),
    300: Color.fromRGBO(21, 114, 71, .4),
    400: Color.fromRGBO(21, 114, 71, .5),
    500: Color.fromRGBO(21, 114, 71, .6),
    600: Color.fromRGBO(21, 114, 71, .7),
    700: Color.fromRGBO(21, 114, 71, .8),
    800: Color.fromRGBO(21, 114, 71, .9),
    900: Remede.codeUI.couleurPrincipale,
  };
  //

//MaterialColor colorCustom = MaterialColor(0xFF880E4F, couleur);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remède',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        primarySwatch:
            MaterialColor(Remede.codeUI.couleurPrincipale.value, couleur),
      ),
      home: vue,
    );
  }
}
