import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:remede/main.dart';
import 'package:remede/vues/menulateral/menu.dart';
import 'package:remede/vues/secretariat.dart';
import 'package:remede/vues/vouveaudossier/nouveaudossier.dart';

class Activite extends StatefulWidget {
  Activite(this.titre, this.icon);

  String? titre;
  late IconData icon;

  @override
  State<StatefulWidget> createState() {
    return _Activite();
  }
}

class _Activite extends State<Activite> with TickerProviderStateMixin {
  late TabController controller;
  //String sousTitre = "Sécretariat Medical";
  //final StreamController<String> _streamController = StreamController<String>();
  //
  late Widget menu;
  late Widget secretariatMedical;
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
    secretariatMedical = SecretariatMedical(controller, this);
    //
    menu = MenuLateral(controller, this);
    //
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              //
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Row(
            children: [
              Icon(
                widget.icon,
                size: 40,
              ),
              SizedBox(
                width: 20,
              ),
              RichText(
                text: TextSpan(
                  text: widget.titre! + "\n",
                  
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      //Transporteur
                      text: Remede.Transporteur["soustitre"],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          bottom: TabBar(
            isScrollable: true,
            controller: controller,
            indicatorColor: Colors.black,
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
                    Text("Menu")
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
                    Text(Remede.Transporteur["soustitre"])
                  ],
                ),
              ),
              Tab(
                //icon: Icon(Icons.directions_transit),
                //text: "Réception",
                child: Row(
                  children: [
                    Icon(Icons.content_paste_off_outlined),//how_to_reg_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Réception")
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
                    Text("Rendez-vous")
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            menu,
            Remede.Transporteur["vue"] == 1
                ? NouveauDossier()
                : Icon(Icons.directions_bike), //
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
        //bottomNavigationBar: ,
      ),
    );
  }
}
