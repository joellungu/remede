import 'dart:async';

import 'package:flutter/material.dart';
import 'package:remede/main.dart';

class SecretariatMedical extends StatefulWidget {
  late TabController controller;
  late State etat;

  SecretariatMedical(this.controller, this.etat);

  @override
  State<StatefulWidget> createState() {
    return _SecretariatMedical();
  }
}

class _SecretariatMedical extends State<SecretariatMedical> {
  //Remede.bool Remede.b9 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term'),
            )),
        Expanded(
          flex: 1,
          child: ListView(
            padding: const EdgeInsets.only(top: 30),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: ElevatedButton(
            onPressed: () {
              /*
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                    */
            },
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
                //backgroundColor:
                //  MaterialStateProperty.all(Colors.blue.shade900),
                ),
            child: SizedBox(
              height: 45,
              //width: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_box_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Nouveau dossier médical",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
