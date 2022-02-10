import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:remede/const/elementstyle.dart';

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
                          child: Padding(
                            padding: EdgeInsets.only(),
                            child: Column(
                              children: [
                                Container(
                                  color: const Color.fromRGBO(21, 114, 71, 1),
                                  //height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20,
                                        right: 15,
                                        top: 20,
                                        bottom: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "CONSULTATION",
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
                                Container(
                                  //height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      right: 15,
                                      top: 10,
                                      bottom: 0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: RichText(
                                              text: TextSpan(
                                                text: "RECEPTION\n",
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        "${date.day}/${date.month}/${date.year}/${date.hour}:${date.minute}",
                                                    style: const TextStyle(
                                                      color: Colors.grey,
                                                      //fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  //fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: RichText(
                                              text: TextSpan(
                                                text: "${widget.nom}\n",
                                                children: [
                                                  TextSpan(
                                                    text: "${widget.matricule}",
                                                    style: const TextStyle(
                                                      color: Colors.grey,
                                                      //fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  //fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 1.5,
                                  width:
                                      MediaQuery.of(context).size.width / 1.1,
                                  child: ListView(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              height: 90,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: const Text(
                                                      "Poids",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black26,
                                                          blurRadius: 1,
                                                          offset: Offset(0, 0),
                                                        )
                                                      ],
                                                    ),
                                                    height: 50,
                                                    child: const TextField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      style: TextStyle(
                                                        color: Colors.black87,
                                                      ),
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                          top: 14,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              height: 90,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: const Text(
                                                      "Temperature",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black26,
                                                          blurRadius: 1,
                                                          offset: Offset(0, 0),
                                                        )
                                                      ],
                                                    ),
                                                    height: 50,
                                                    child: const TextField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      style: TextStyle(
                                                        color: Colors.black87,
                                                      ),
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                          top: 14,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              height: 90,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: const Text(
                                                      "Prenom",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black26,
                                                          blurRadius: 1,
                                                          offset: Offset(0, 0),
                                                        )
                                                      ],
                                                    ),
                                                    height: 50,
                                                    child: const TextField(
                                                      style: TextStyle(
                                                        color: Colors.black87,
                                                      ),
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                          top: 14,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              height: 90,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: const Text(
                                                      "Prenom",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black26,
                                                          blurRadius: 1,
                                                          offset: Offset(0, 0),
                                                        )
                                                      ],
                                                    ),
                                                    height: 50,
                                                    child: const TextField(
                                                      style: TextStyle(
                                                        color: Colors.black87,
                                                      ),
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                          top: 14,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              height: 90,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: const Text(
                                                      "Prenom",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black26,
                                                          blurRadius: 1,
                                                          offset: Offset(0, 0),
                                                        )
                                                      ],
                                                    ),
                                                    height: 50,
                                                    child: const TextField(
                                                      style: TextStyle(
                                                        color: Colors.black87,
                                                      ),
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                          top: 14,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              height: 90,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: const Text(
                                                      "Prenom",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black26,
                                                          blurRadius: 1,
                                                          offset: Offset(0, 0),
                                                        )
                                                      ],
                                                    ),
                                                    height: 50,
                                                    child: const TextField(
                                                      style: TextStyle(
                                                        color: Colors.black87,
                                                      ),
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                          top: 14,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              height: 90,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: const Text(
                                                      "Prenom",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black26,
                                                          blurRadius: 1,
                                                          offset: Offset(0, 0),
                                                        )
                                                      ],
                                                    ),
                                                    height: 50,
                                                    child: const TextField(
                                                      style: TextStyle(
                                                        color: Colors.black87,
                                                      ),
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                          top: 14,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              height: 90,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: const Text(
                                                      "Prenom",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black26,
                                                          blurRadius: 1,
                                                          offset: Offset(0, 0),
                                                        )
                                                      ],
                                                    ),
                                                    height: 50,
                                                    child: const TextField(
                                                      style: TextStyle(
                                                        color: Colors.black87,
                                                      ),
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                          top: 14,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
              color: Color.fromRGBO(21, 114, 71, 1),
              border: Border(
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
                    color: Color.fromRGBO(21, 114, 71, 1),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.checklist_outlined,
                    color: Color.fromRGBO(21, 114, 71, 1),
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
                            color: Color.fromRGBO(21, 114, 71, 1),
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
                            color: Color.fromRGBO(21, 114, 71, 1),
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
                            color: Color.fromRGBO(21, 114, 71, 1),
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
