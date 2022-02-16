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
                          widget.icon,//Icons.check_circle,
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
                trailing: const Icon(Icons.edit, color: Colors.blue,),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(widget.titre!, style: TextStyle(color: Colors.blue,),),
                          content: Container(
                            height: 200,
                            child: TextField(),
                          ),
                          actions: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.close,
                                color: Colors.red.shade700,
                              ),
                            )
                          ],
                        );
                      });
                }),
            isExpanded: exp,
          )
        ],)
    );
  }
}
