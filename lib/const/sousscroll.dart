import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:remede/main.dart';

class SousScroll extends StatefulWidget {
  String? titre;
  IconData? icon;

  SousScroll({this.icon, this.titre});

  @override
  State<StatefulWidget> createState() {
    return _SousScroll();
  }
}

class _SousScroll extends State<SousScroll> {
  bool exp = true;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            //_data[index].isExpanded = !isExpanded;
          });
        },
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
                          Icons.check_circle,
                          color: Remede.codeUI.couleurPrincipale,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "EXAMEN PHYSIQUE",
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
                trailing: const Icon(Icons.delete),
                onTap: () {
                  setState(() {
                    exp = exp ? false : true;
                  });
                }),
            isExpanded: exp,
          )
        ]);
  }
}
