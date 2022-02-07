import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';
import 'package:remede/main.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'activites/activite.dart';
import 'menulateral/menu.dart';
import 'vouveaudossier/nouveaudossier.dart';

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

  @override
  Widget build(BuildContext context) {
    //FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return Scaffold(
      appBar: AppBar(
        title: Text("Hopital d'à coté"),
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
      ),
      drawer: Drawer(
        elevation: 1,
        child: MenuLateral(),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  child: TextField(
                    textInputAction: TextInputAction.search,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: const Text(
                        "Recherche...",
                      ),
                    ),
                  ),
                )),
              ],
            ),
            Expanded(
              flex: 1,
              child: ListView(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                children: [
                  Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.health_and_safety_outlined,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "RECEPTION ,",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.medical_services_outlined),
        onPressed: () {
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
      ),
    );
  }
}

/*
Padding(
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
*/