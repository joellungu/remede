import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:remede/main.dart';
import 'package:remede/vues/anameneses/anamenese.dart';
import 'package:remede/vues/consultation/consultation.dart';
import 'package:remede/vues/laboratoire/laboratoire.dart';
import 'package:remede/vues/menulateral/menu.dart';
import 'package:remede/vues/secretariat.dart';
import 'package:remede/vues/vouveaudossier/nouveaudossier.dart';

class Activite extends StatefulWidget {
  Activite(this.nom, this.matricule);

  String? nom;
  String? matricule;

  @override
  State<StatefulWidget> createState() {
    return _Activite();
  }
}

class _Activite extends State<Activite> with TickerProviderStateMixin {
  late TabController controller;

  String dropdownValue = "Profile";
  String? selectedValue;
  List<String> items = [
    'Profile',
    'Parametre',
    'Deconnexion',
  ];
  List<IconData> itemsIcons = [
    CupertinoIcons.person,
    CupertinoIcons.gear,
    Icons.close_fullscreen_outlined,
  ];

  DateTime date = DateTime.now();

  //
  @override
  void dispose() {
    controller.dispose();
    //
    super.dispose();
  }

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    //
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: RichText(
            text: TextSpan(
              text: "${widget.nom}\n",
              children: [
                TextSpan(
                  text: widget.matricule,
                  style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
          actions: [
            DropdownButtonHideUnderline(
              child: DropdownButton<String?>(
                  //value: dropdownValue,
                  icon: const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      CupertinoIcons.person,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: List.generate(items.length, (index) {
                    return DropdownMenuItem<String>(
                      value: "$index",
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            itemsIcons[index],
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            items[index],
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    );
                  })),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            controller: controller,
            indicatorColor: Colors.white,
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white10,
            ),
            tabs: [
              Tab(
                //icon: Icon(Icons.directions_car),
                //text: "",
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("CONSULTATION")
                  ],
                ),
              ),
              Tab(
                //icon: Icon(Icons.directions_transit),
                //text: "Réception",
                child: Row(
                  children: [
                    Icon(Icons.people_alt_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text("ANAMENESES")
                  ],
                ),
              ),
              Tab(
                //icon: Icon(Icons.directions_transit),
                //text: "Réception",
                child: Row(
                  children: [
                    Icon(Icons
                        .content_paste_off_outlined), //how_to_reg_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text("LABORATOIRE")
                  ],
                ),
              ),
              Tab(
                //icon: Icon(Icons.directions_bike),
                //text: "Rendez-vous",
                child: Row(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(
                      width: 20,
                    ),
                    Text("ISSUE")
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            Consultation(widget.nom, widget.matricule),
            Anamenese(),
            Laboratoire(),
            Icon(Icons.directions_bike),
          ],
        ),
        //bottomNavigationBar: ,
      ),
    );
  }
}
