import 'dart:async';

import 'package:flutter/material.dart';
import 'package:remede/main.dart';
import 'package:remede/vues/recherche.dart';
import 'package:remede/vues/vouveaudossier/nouveaudossier.dart';

class MenuLateral extends StatefulWidget {
  late TabController controller;
  late State etat;

  MenuLateral();

  @override
  State<StatefulWidget> createState() {
    return _MenuLateral();
  }
}

class _MenuLateral extends State<MenuLateral> {
  //Remede.bool Remede.b9 = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 30),
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(
            left: 20,
          ),
          height: 100,
          width: 200,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.medical_services_outlined,
                    color: Colors.teal,
                    size: 50,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hopital d'à coté",
                    style: TextStyle(
                      fontSize: Remede.conts.tailleText(context),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(), //
        ListTile(
          onTap: () {
            setState(() {
              Remede.b1 = true;
              Remede.b2 = false;
              Remede.b3 = false;
              Remede.b4 = false;
              Remede.b5 = false;
              Remede.b6 = false;
              Remede.b7 = false;
              Remede.b8 = false;
            });
            showDialog(
              context: context,
              builder: (context) {
                return Material(
                  child: Column(
                    children: [
                      Container(
                        color: const Color.fromRGBO(21, 114, 71, 1),
                        //height: 40,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 15, top: 20, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Nouveau dossier médical",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: NouveauDossier(),
                      )
                    ],
                  ),
                );
              },
            );
          },
          leading: Icon(
            Icons.list_alt_outlined,
            color: Colors.teal,
          ),
          title: Text(
            "Nouveau dossier médical",
            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          onTap: () {
            setState(() {
              Remede.b1 = true;
              Remede.b2 = false;
              Remede.b3 = false;
              Remede.b4 = false;
              Remede.b5 = false;
              Remede.b6 = false;
              Remede.b7 = false;
              Remede.b8 = false;
            });
            showDialog(
                context: context,
                builder: (context) {
                  return Material(
                    child: Recherche("Sécretariat Medical"),
                  );
                });
            print("_______________________________________________________");
            (() {
              Remede.Transporteur["soustitre"] = "Sécretariat Medical";
            });
            widget.controller.animateTo(1);
          },
          leading: Icon(
            Icons.airline_seat_recline_normal_outlined,
            color: Remede.b1 ? Colors.teal : Colors.blue,
          ),
          title: Text(
            "Sécretariat Medical",
            style: TextStyle(
              color: Remede.b1 ? Colors.teal : Colors.grey.shade600,
              fontWeight: Remede.b1 ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          onTap: () {
            setState(() {
              Remede.b1 = false;
              Remede.b2 = true;
              Remede.b3 = false;
              Remede.b4 = false;
              Remede.b5 = false;
              Remede.b6 = false;
              Remede.b7 = false;
              Remede.b8 = false;
            });
            widget.controller.animateTo(1);
            (() {
              Remede.Transporteur["soustitre"] = "Consultation";
            });
            //
          },
          leading: Icon(
            Icons.article_outlined,
            color: Remede.b2 ? Colors.teal : Colors.blue,
          ),
          title: Text(
            "Consultation",
            style: TextStyle(
              color: Remede.b2 ? Colors.teal : Colors.grey.shade600,
              fontWeight: Remede.b2 ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          onTap: () {
            setState(() {
              Remede.b1 = false;
              Remede.b2 = false;
              Remede.b3 = true;
              Remede.b4 = false;
              Remede.b5 = false;
              Remede.b6 = false;
              Remede.b7 = false;
              Remede.b8 = false;
            });
            widget.controller.animateTo(1);
            (() {
              Remede.Transporteur["soustitre"] = "Facturation";
            });
            //
          },
          leading: Icon(
            Icons.monetization_on_outlined,
            color: Remede.b3 ? Colors.teal : Colors.blue,
          ),
          title: Text(
            "Facturation",
            style: TextStyle(
              color: Remede.b3 ? Colors.teal : Colors.grey.shade600,
              fontWeight: Remede.b3 ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          onTap: () {
            setState(() {
              Remede.b1 = false;
              Remede.b2 = false;
              Remede.b3 = false;
              Remede.b4 = true;
              Remede.b5 = false;
              Remede.b6 = false;
              Remede.b7 = false;
              Remede.b8 = false;
            });
            widget.controller.animateTo(1);
            (() {
              Remede.Transporteur["soustitre"] = "Pharmacie";
            });
            //
          },
          leading: Icon(
            Icons.medication_outlined,
            color: Remede.b4 ? Colors.teal : Colors.blue,
          ),
          title: Text(
            "Pharmacie",
            style: TextStyle(
              color: Remede.b4 ? Colors.teal : Colors.grey.shade600,
              fontWeight: Remede.b4 ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          onTap: () {
            setState(() {
              Remede.b1 = false;
              Remede.b2 = false;
              Remede.b3 = false;
              Remede.b4 = false;
              Remede.b5 = true;
              Remede.b6 = false;
              Remede.b7 = false;
              Remede.b8 = false;
            });
            widget.controller.animateTo(1);
            (() {
              Remede.Transporteur["soustitre"] = "Laboratoire";
            });
            //
          },
          leading: Icon(
            Icons.biotech_outlined,
            color: Remede.b5 ? Colors.teal : Colors.blue,
          ),
          title: Text(
            "Laboratoire",
            style: TextStyle(
              color: Remede.b5 ? Colors.teal : Colors.grey.shade600,
              fontWeight: Remede.b5 ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          onTap: () {
            setState(() {
              Remede.b1 = false;
              Remede.b2 = false;
              Remede.b3 = false;
              Remede.b4 = false;
              Remede.b5 = false;
              Remede.b6 = true;
              Remede.b7 = false;
              Remede.b8 = false;
            });
            widget.controller.animateTo(1);
            (() {
              Remede.Transporteur["soustitre"] = "Imagerie médical";
            });
            //
          },
          leading: Icon(
            Icons.art_track_outlined,
            color: Remede.b6 ? Colors.teal : Colors.blue,
          ),
          title: Text(
            "Imagerie médical",
            style: TextStyle(
              color: Remede.b6 ? Colors.teal : Colors.grey.shade600,
              fontWeight: Remede.b6 ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          onTap: () {
            setState(() {
              Remede.b1 = false;
              Remede.b2 = false;
              Remede.b3 = false;
              Remede.b4 = false;
              Remede.b5 = false;
              Remede.b6 = false;
              Remede.b7 = true;
              Remede.b8 = false;
            });
            widget.controller.animateTo(1);
            (() {
              Remede.Transporteur["soustitre"] = "Médecine legale";
            });
            //
          },
          leading: Icon(
            Icons.medical_services_outlined,
            color: Remede.b7 ? Colors.teal : Colors.blue,
          ),
          title: Text(
            "Médecine legale",
            style: TextStyle(
              color: Remede.b7 ? Colors.teal : Colors.grey.shade600,
              fontWeight: Remede.b7 ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          onTap: () {
            setState(() {
              Remede.b1 = false;
              Remede.b2 = false;
              Remede.b3 = false;
              Remede.b4 = false;
              Remede.b5 = false;
              Remede.b6 = false;
              Remede.b7 = false;
              Remede.b8 = true;
            });
            //widget.streamController.sink.add('Salut comment?');
            widget.controller.animateTo(1);
            (() {
              Remede.Transporteur["soustitre"] = "Hospitalisation";
            });
            //
          },
          leading: Icon(
            Icons.airline_seat_flat_angled_outlined,
            color: Remede.b8 ? Colors.teal : Colors.blue,
          ),
          title: Text(
            "Hospitalisation",
            style: TextStyle(
              color: Remede.b8 ? Colors.teal : Colors.grey.shade600,
              fontWeight: Remede.b8 ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
