import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:remede/main.dart';

class Recherche extends StatefulWidget {
  late String titre;

  Recherche(this.titre);

  @override
  State<StatefulWidget> createState() {
    return _Recherche();
  }
}

class _Recherche extends State<Recherche> {
  //Remede.bool Remede.b9 = true;
  final StreamController<String> _streamController = StreamController<String>();
  //
  TextEditingController _searchController = TextEditingController();
  //
  String searchText = '';

  List<Map<String, dynamic>> liste = [];

  List listeE = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20"
  ];
  //
  //Stream<List<Map<String, dynamic>>> filtre() async* {
  //  _streamController.sink.add({});
  //};

  @override
  void initState() {
    //_searchController.addListener(() {
    //_searchController
    //});
    //
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          padding: EdgeInsets.only(
            left: 20,
            right: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recherche dans ${widget.titre}"),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 5,
            left: 10,
            right: 10,
          ),
          child: TextField(
            controller: _searchController,
            onChanged: (value) {
              setState(() {
                //searchText = value;
                //print("cool: $searchText");
                _streamController.sink.add(value);
              });
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Tapez un mot',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: StreamBuilder(
            stream: _streamController.stream,
            builder: (context, data) {
              if (data.hasError) {
                return Container();
              } else if (data.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text("..."),
                );
              }
              print("___ ${data.data}");
              //  data.data as List<Map<String, dynamic>>;
              liste.clear();
              listeE.forEach((element) {
                if (element.contains(data.data.toString())) {
                  liste.add({"id": element});
                }
              });
              //
              return ListView(
                children: List.generate(liste.length, (i) {
                  return InkWell(
                    onTap: () {
                      Remede.Transporteur["vue"] == 0;
                      Navigator.of(context).pop();
                    },
                    child: Card(
                      elevation: 2,
                      shadowColor: Colors.teal,
                      child: SizedBox(
                        height: 55,
                        child: Column(
                          children: [Text(liste[i]["id"])],
                        ),
                      ),
                    ),
                  );
                }),
              );
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
/*
Padding(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: ElevatedButton(
            onPressed: () {
              /*
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                    */
            },
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
                //backgroundColor:
                //  MaterialStateProperty.all(Colors.blue.shade900),
                ),
            child: SizedBox(
              height: 45,
              //width: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_box_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Nouveau dossier médical",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
*/