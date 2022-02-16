import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:remede/const/prescrireordonance.dart';
import 'package:remede/const/sousscroll.dart';
import 'package:remede/main.dart';

class Anamenese extends StatefulWidget {
  late String nom;
  late String matricule;
  Anamenese(this.nom, this.matricule);
  @override
  State<StatefulWidget> createState() {
    return _Anamenese();
  }
}

class _Anamenese extends State<Anamenese> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) {
                        return Material(
                          child: PrescrireOrdonance(
                            nom: widget.nom,
                            matricule: widget.matricule,
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
                          " Prescrire l'ordonance  ",
                          style: TextStyle(
                            color: Colors.white,
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
                  Text(
                    "SYMPTOMES",
                    style: TextStyle(
                      color: Remede.codeUI.couleurPrincipale,
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
              //height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Symptomes",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "${date.day}/${date.month}/${date.year}/${date.hour}:${date.minute}",
                                style: TextStyle(
                                  color: Remede.codeUI.couleurPrincipale,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Fievre, cephalees, maux de tete",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey.shade700,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SousScroll(
                    titre: "ANTECEDENTS",
                    icon: Icons.check_circle,
                  ),
                  SousScroll(
                    titre: "HISTOIRE DE LA MALADIE",
                    icon: Icons.check_circle,
                  ),
                  SousScroll(
                    titre: "COMPLEMENT D'ANAMENESE",
                    icon: Icons.check_circle,
                  ),
                  SousScroll(
                    titre: "DIAGNOSTIQUE",
                    icon: Icons.check_circle,
                  ),
                  SousScroll(
                    titre: "EXAMEN PHYSIQUE",
                    icon: Icons.check_circle,
                  )
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
                    color: Colors.grey.shade700,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "PLAN DE TRAITEMENT",
                    style: TextStyle(
                      color: Colors.grey.shade700,
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
          ExpandablePanel(
            header: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.attachment,
                    color: Colors.blue,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("POSER UN ACTE"),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 3,
                      bottom: 3,
                    ),
                    child: Text(
                      "Services des Urgences Integrees",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
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
          )
        ],
      ),
    );
  }
}
