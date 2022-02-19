import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:remede/const/noteanamenese.dart';
import 'package:remede/main.dart';

class SousScroll extends StatefulWidget {
  String? titre;
  IconData? icon;
  //
  String? nom;
  String? matricule;
  DateTime? date;

  SousScroll({this.icon, this.titre, this.nom, this.matricule, this.date});

  @override
  State<StatefulWidget> createState() {
    return _SousScroll();
  }
}

class _SousScroll extends State<SousScroll> {
  bool exp = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade200,
        ),
      ),
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            //_data[index].isExpanded = !isExpanded;
          });
        },
        dividerColor: Colors.transparent,
        elevation: 0,
        children: [
          ExpansionPanel(
            canTapOnHeader: true,
            headerBuilder: (BuildContext context, bool isExpanded) {
              print(isExpanded);
              exp = !isExpanded;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          widget.icon, //Icons.check_circle,
                          color: Remede.codeUI.couleurPrincipale,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.titre!,
                          style: TextStyle(
                            color: Colors.blue,
                            //size: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            body: ListTile(
                title: Text("ELhbl uisl, dc yluyz, UY kcy"),
                subtitle: Text(
                  '12/12/2022',
                  style: TextStyle(color: Colors.green.shade700),
                ),
                trailing: const Icon(
                  Icons.edit,
                  color: Colors.blue,
                ),
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) {
                      return Material(
                        child: NoteAnamenese(
                          nom: widget.nom,
                          matricule: widget.matricule,
                          date: widget.date,
                        ),
                      );
                    },
                  );
                }),
            isExpanded: exp,
          )
        ],
      ),
    );
  }
}
