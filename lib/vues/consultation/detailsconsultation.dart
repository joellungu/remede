import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:remede/main.dart';

class DetailsConsultation extends StatefulWidget {
  DetailsConsultation(this.nom, this.matricule);

  String? nom;
  String? matricule;

  @override
  State<StatefulWidget> createState() {
    return _DetailsConsultation();
  }
}

class _DetailsConsultation extends State<DetailsConsultation>
    with TickerProviderStateMixin {
  late TabController controller;

  String dropdownValue = "Profile";
  String? selectedValue;
  List<String> items = [
    'Profile',
    'Historique de consultation',
  ];
  List<IconData> itemsIcons = [
    CupertinoIcons.person,
    CupertinoIcons.list_number,
  ];

  List<Map<String, dynamic>> listeInfos = [
    {
      "cles": "Nom",
      "valeur": "LDUY UFDY YFD UYfD",
      "couleurValeur": Colors.black,
      "icon": Container()
    },
    {
      "cles": "PostNom",
      "valeur": "LDUY YFD UYfD",
      "couleurValeur": Colors.black,
      "icon": Container()
    },
    {
      "cles": "Prenom",
      "valeur": "LDUY UFDY ",
      "couleurValeur": Colors.black,
      "icon": Container()
    },
    {
      "cles": "Age",
      "valeur": "50 ans",
      "couleurValeur": Colors.black,
      "icon": Container()
    },
    {
      "cles": "Sexe",
      "valeur": "HOMME",
      "couleurValeur": Colors.grey.shade700,
      "icon": Container()
    },
    {
      "cles": "Téléphone",
      "valeur": "00887565100",
      "couleurValeur": Colors.grey.shade700,
      "icon": Icon(Icons.phone_android)
    },
    {
      "cles": "Email",
      "valeur": "LDUY UFDY YFD UYfD",
      "couleurValeur": Colors.grey.shade700,
      "icon": Icon(Icons.email)
    },
    {
      "cles": "À Rejoint",
      "valeur": "2022-12-22 19:22:22",
      "couleurValeur": Colors.grey.shade700,
      "icon": Container()
    },
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
    controller = TabController(length: 2, vsync: this);
    //
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
                      Icons.person,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Profile")
                  ],
                ),
              ),
              Tab(
                //icon: Icon(Icons.directions_transit),
                //text: "Réception",
                child: Row(
                  children: [
                    Icon(CupertinoIcons.list_number),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Historique de consultation")
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            ListView(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.only(left: 0, right: 0)),
                    backgroundColor: MaterialStateProperty.all(
                      Remede.codeUI.couleurPrincipale,
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    height: 50,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "COMMENCER LA CONSULTATION",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_drop_down_circle_rounded,
                            color: Colors.white, //Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
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
                                "NNS_ID",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              widget.matricule!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    listeInfos.length,
                    (index) => detailsInfos(
                      index == 0,
                      cles: listeInfos[index]["cles"],
                      valeur: listeInfos[index]["valeur"],
                      couleurValeur: listeInfos[index]["couleurValeur"],
                      icon: listeInfos[index]["icon"],
                    ),
                  ),
                )
              ],
            ),
            ListView(
              children: List.generate(
                10,
                (index) => InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: styleBouton(),
                  ),
                ),
              ),
            )
          ],
        ),
        //bottomNavigationBar: ,
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
                    flex: 8,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check,
                            color: Colors.black,
                            size: 20,
                          ),
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 20,
                          ),
                          Icon(
                            Icons.more_time_outlined,
                            color: Colors.red,
                            size: 20,
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
                          Expanded(
                            flex: 7,
                            child: Text(
                              "LDk IU GS FDYQUY",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 4,
                            child: Text(
                              "****-****-4562",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
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
                          fontSize: 11,
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
                          Icon(
                            Icons.thermostat,
                            color: Colors.blue,
                            size: 20,
                          ),
                          Text("37°c"),
                          SizedBox(
                            width: 2,
                          ),
                          Text("/"),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.monitor_weight,
                            size: 20,
                          ),
                          Text("50 Kg"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.map_outlined,
                            size: 15,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Barumbu",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 11,
                              color: Colors.grey,
                            ),
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

  Widget detailsInfos(bool v,
      {String? cles, String? valeur, Color? couleurValeur, Widget? icon}) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              color: Remede.codeUI.couleurPrincipale,
              child: Text(
                cles!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: v
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.start,
                children: [
                  icon!,
                  !v
                      ? SizedBox(
                          width: 30,
                        )
                      : Container(),
                  Text(
                    valeur!,
                    style: TextStyle(
                      color: couleurValeur,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  v
                      ? TextButton(
                          onPressed: () {},
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.edit,
                                  size: 17,
                                ),
                                Text(
                                  "Editer",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
      ),
    );
  }
}
