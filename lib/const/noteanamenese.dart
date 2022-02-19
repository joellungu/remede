import 'package:flutter/material.dart';
import 'package:remede/main.dart';

class NoteAnamenese extends StatefulWidget {
  String? nom;
  String? matricule;
  DateTime? date;
  NoteAnamenese({this.nom, this.matricule, this.date});
  @override
  State<StatefulWidget> createState() {
    return _NoteAnamenese();
  }
}

class _NoteAnamenese extends State<NoteAnamenese> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 250,
                child: Column(
                  children: [
                    Container(
                      color: Remede.codeUI.couleurPrincipale,
                      //height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 15, top: 20, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "NOTE",
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            "${widget.date!.day}/${widget.date!.month}/${widget.date!.year}/${widget.date!.hour}:${widget.date!.minute}",
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          //fontSize: 15,
                                          fontWeight: FontWeight.bold,
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
                                          fontWeight: FontWeight.bold,
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
                    ListTile(
                      leading: Icon(Icons.edit),
                      title: Text("Note de laboratoire"),
                      subtitle: Text("SYMPTOMES"),
                      trailing: Text(""),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider()
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Container(
                    child: TextField(
                      maxLines: 20,
                      decoration: InputDecoration(
                        hintText: "...",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.save_alt_outlined),
                    Text(
                      "Sauvegarder l'information",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
