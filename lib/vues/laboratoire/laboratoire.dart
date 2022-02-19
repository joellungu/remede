import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:remede/const/bonlabo.dart';
import 'package:remede/const/notelaboratoire.dart';
import 'package:remede/main.dart';

class Laboratoire extends StatefulWidget {
  String? nom;
  String? matricule;
  Laboratoire(this.nom, this.matricule);
  @override
  State<StatefulWidget> createState() {
    return _Laboratoire();
  }
}

class _Laboratoire extends State<Laboratoire> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) {
                        return Material(
                          child: BonLabo(
                            nom: widget.nom,
                            matricule: widget.matricule,
                            date: date,
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 40,
                    //width: 150,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.list_rounded,
                          color: Colors.blue,
                        ),
                        Text(
                          " BON D'ANALYSE du LABO ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) {
                        return Material(
                          child: Padding(
                            padding: EdgeInsets.only(),
                            child: Column(),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 40,
                    //width: 150,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.image_outlined,
                          color: Colors.blue,
                        ),
                        Text(
                          " IMAGERIE ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          ExpandablePanel(
            header: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Remede.codeUI.couleurPrincipale,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.checklist_outlined,
                    color: Remede.codeUI.couleurPrincipale,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Examens du laboratoire")
                ],
              ),
            ),
            collapsed: Container(),
            expanded: Container(
              padding: EdgeInsets.only(
                bottom: 20,
              ),
              //height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.check_circle_outline,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Bilirubine totale",
                                style: TextStyle(
                                  color: Colors.black,
                                  //size: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            //
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) {
                                return Material(
                                  child: NoteLabo(
                                    nom: widget.nom,
                                    matricule: widget.matricule,
                                    date: date,
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(
                            Icons.addchart_outlined,
                            color: Remede.codeUI.couleurPrincipale,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.check_circle_outline,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Biopsie",
                                style: TextStyle(
                                  color: Colors.black,
                                  //size: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.addchart_outlined,
                            color: Remede.codeUI.couleurPrincipale,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Urée",
                                style: TextStyle(
                                  color: Colors.black,
                                  //size: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.addchart_outlined,
                            color: Remede.codeUI.couleurPrincipale,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ExpandablePanel(
            header: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.list_alt_outlined,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "PLAN DE TRAITEMENT",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            collapsed: Container(),
            expanded: Container(
              padding: EdgeInsets.only(
                bottom: 20,
              ),
              height: 100,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
