import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:remede/const/consultationconst.dart';
import 'package:remede/const/elementstyle.dart';
import 'package:remede/main.dart';

class Consultation extends StatefulWidget {
  String? nom;
  String? matricule;
  Consultation(this.nom, this.matricule);
  @override
  State<StatefulWidget> createState() {
    return _Consultation();
  }
}

class _Consultation extends State<Consultation> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 10,
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
                          child: ConsultationConst(
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
                          Icons.edit,
                          color: Colors.blue,
                        ),
                        Text(
                          " Consultation ",
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
          elementStyle(
            icon1: Icons.more_time_rounded,
            text1: "Cool",
            couleur1: Colors.green,
            text2: "Pas cool",
            couleur2: Colors.red,
            icon2: Icons.hd_rounded,
          ),
          elementStyle(
            icon1: Icons.person_pin_circle,
            text1: "Patient",
            couleur1: Colors.green,
            text2: "Pas cool",
            couleur2: Colors.red,
            icon2: Icons.hd_rounded,
          ),
          elementStyle(
            icon1: Icons.monitor_weight,
            text1: "Poids",
            couleur1: Colors.black,
            text2: "Pas cool",
            couleur2: Colors.red,
            icon2: Icons.hd_rounded,
          ),
          elementStyle(
            icon1: Icons.date_range_outlined,
            text1: "Age",
            couleur1: Colors.green,
            text2: "Pas cool",
            couleur2: Colors.red,
            icon2: Icons.hd_rounded,
          ),
          elementStyle(
            icon1: Icons.border_style,
            text1: "Cool",
            couleur1: Colors.green,
            text2: "Pas cool",
            couleur2: Colors.red,
            icon2: Icons.hd_rounded,
          ),
          elementStyle(
            icon1: Icons.task_alt,
            text1: "Personne",
            couleur1: Colors.red,
            text2: "Pas cool",
            couleur2: Colors.blue,
            icon2: Icons.hd_rounded,
          ),
          elementStyle(
            icon1: Icons.thermostat_auto_outlined,
            text1: "Temperature",
            couleur1: Colors.blue,
            text2: "Pas cool",
            couleur2: Colors.red,
            icon2: Icons.hd_rounded,
          ),
          elementStyle(
            icon1: Icons.breakfast_dining_outlined,
            text1: "Age",
            couleur1: Colors.green,
            text2: "Pas cool",
            couleur2: Colors.yellow,
            icon2: Icons.hd_rounded,
          ),
          elementStyle(
            icon1: Icons.border_style,
            text1: "Cool",
            couleur1: Colors.green,
            text2: "Pas cool",
            couleur2: Colors.green,
            icon2: Icons.hd_rounded,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.medical_services,
                          color: Colors.white30, //Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Dossier Médical",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.folder_open,
                            color: Colors.white30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Consultation".toLowerCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            decoration: BoxDecoration(
              color: Remede.codeUI.couleurPrincipale,
              border: const Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ExpandablePanel(
            header: Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
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
                  Text("Alergie et médicament en cours")
                ],
              ),
            ),
            collapsed: Container(),
            expanded: Container(
              padding: EdgeInsets.only(
                bottom: 20,
                left: 20,
                right: 20,
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
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.only(left: 0, right: 0)),
              backgroundColor: MaterialStateProperty.all(
                Colors.red.shade700,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 50,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.timelapse,
                      color: Colors.white30, //Colors.green,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Cloture cette consultation",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
