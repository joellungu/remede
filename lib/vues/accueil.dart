import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';
import 'package:remede/main.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'activites/activite.dart';

class Accueil extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Accueil();
  }
}

class _Accueil extends State<Accueil> {
  List menu = [
    "Gynecologie",
    "Pediatrie",
    "Imagerie médicale",
    "Medecines internes",
    "Services des urgences integrées",
    "Plus"
  ];

  List menuColors = [
    Colors.teal.shade500,
    Colors.teal.shade300,
    Colors.teal.shade300,
    Colors.teal.shade500,
    Colors.teal.shade500,
    Colors.teal.shade300,
  ];

  List menuIcons = [
    HumanitarianIcons.woman, //Icons.pregnant_woman_outlined,
    Icons.child_care_outlined,
    Icons.medical_services_outlined, //Icons.biotech_outlined,
    HumanitarianIcons.health,
    //Icons.airline_seat_flat_angled_outlined, //medical_services_outlined,
    HumanitarianIcons.ambulance, //airline_seat_flat_angled_outlined
    Icons.add
  ];

  @override
  Widget build(BuildContext context) {
    //FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return Scaffold(
      appBar: AppBar(
        title: Text("Hopital d'à coté"),
        leading: IconButton(icon: Icon(Icons.window_outlined),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          childAspectRatio: 1,
          crossAxisSpacing: 15,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(menu.length, (index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Activite(
                      menu[index],
                      menuIcons[index],
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 2,
                shadowColor: Colors.green.shade100,
                color: menuColors[index],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Center(
                          child: Icon(
                            menuIcons[index],
                            //CupertinoIcons.house,
                            //color: Colors.green.shade300,
                            size: MediaQuery.of(context).size.width / 4,
                            //color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 2.4,
                            child: Text(
                              menu[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: Remede.conts.tailleText(context),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      //margin: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        color: menuColors[index] as Color,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: Text(
                        "0/6",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Remede.conts.tailleText(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
      bottomNavigationBar: Container(
        height: 0,
        color: Colors.green,
        child: Row(
          children: [
            Text(
              "Remede",
              style: TextStyle(
                fontSize: Remede.conts.tailleText(context),
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
