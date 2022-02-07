import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';
import 'package:remede/main.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:remede/vues/menulateral/menu.dart';
import 'package:remede/vues/vouveaudossier/nouveaudossier.dart';

class Departement extends StatefulWidget {
  String departement = "";
  Departement(this.departement);
  @override
  State<StatefulWidget> createState() {
    return _Departement();
  }
}

class _Departement extends State<Departement> {
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

  @override
  Widget build(BuildContext context) {
    //FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: "Hopital d'à coté\n",
            children: [
              TextSpan(
                text: widget.departement,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
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
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Container(
                          //height: 40,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 0, top: 0, bottom: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "RECEPTION\n",
                                    children: [
                                      TextSpan(
                                        text:
                                            "${date.day}/${date.month}/${date.year}/${date.hour}:${date.minute}",
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: "Hopital d'à coté\n",
                                    children: [
                                      TextSpan(
                                        text: widget.departement,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        content: Container(
                          height: MediaQuery.of(context).size.height / 1.2,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: ListView(
                            children: [
                              styleBoutonPop(),
                              styleBoutonPop(),
                              styleBoutonPop(),
                              styleBoutonPop(),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Fermer'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Card(
                    elevation: 1,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    child: Container(
                      height: 40,
                      width: 150,
                      alignment: Alignment.center,
                      child: Text(
                        "RECEPTION",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
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
                    //height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 200,
                          child: Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: "${widget.departement}\n",
                                  children: [
                                    TextSpan(
                                      text:
                                          "${date.day}/${date.month}/${date.year}",
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "32",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: styleBouton(),
                  ),
                  InkWell(
                    onTap: () {},
                    child: styleBouton(),
                  ),
                  InkWell(
                    onTap: () {},
                    child: styleBouton(),
                  ),
                  InkWell(
                    onTap: () {},
                    child: styleBouton(),
                  ),
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

  Widget styleBouton() {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      height: 80,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              //color: Colors.blue,
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
                            Icons.check,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.more_time_outlined,
                            color: Colors.red,
                          ),
                          Container(
                            height: 15,
                            width: 15,
                            alignment: Alignment.center,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              //valueColor:
                              //  AlwaysStoppedAnimation<Color>(Colors.green),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "LDk IU GS FDY  gvg gvQUY",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "****-****-4562",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "${date.day}/${date.month}/${date.year}/${date.hour}:${date.minute}",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              //color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.thermostat,
                          color: Colors.blue,
                        ),
                        Text("37°c"),
                        SizedBox(
                          width: 2,
                        ),
                        Text("/"),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(Icons.monitor_weight),
                        Text("50 Kg"),
                      ],
                    )),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.map_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Barumbu",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget styleBoutonPop() {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      height: 80,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: const ListTile(
        title: Text(
          "MDMI HPUGD UGD HDJDL YGDL",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "****-****-4562",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
        trailing: Text(
          "12",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(21, 114, 71, 1),
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
