import 'package:flutter/material.dart';

class NouveauDossier extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NouveauDossier();
  }
}

class _NouveauDossier extends State<NouveauDossier> {
  String _selectedValue = "Homme";
  List<String> listOfValue = ['Homme', 'Femme'];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Nom",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "PostNom",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Prenom",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Sexe",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                      child: DropdownButtonFormField(
                        value: _selectedValue,
                        hint: Text(
                          'choose one',
                        ),
                        isExpanded: true,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value as String;
                          });
                        },
                        onSaved: (value) {
                          setState(() {
                            _selectedValue = value as String;
                          });
                        },
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "can't empty";
                          } else {
                            return null;
                          }
                        },
                        items: listOfValue.map((String val) {
                          return DropdownMenuItem(
                            value: val,
                            child: Text(
                              val,
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Date de naissance",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Date de naissance"),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.calendar_today_outlined),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Numéro de téléphone",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Coventionée/Mutuelle",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                      child: DropdownButtonFormField(
                        value: _selectedValue,
                        hint: Text(
                          'choose one',
                        ),
                        isExpanded: true,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value as String;
                          });
                        },
                        onSaved: (value) {
                          setState(() {
                            _selectedValue = value as String;
                          });
                        },
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "can't empty";
                          } else {
                            return null;
                          }
                        },
                        items: listOfValue.map((String val) {
                          return DropdownMenuItem(
                            value: val,
                            child: Text(
                              val,
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
              //_______________________________
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Catégorie",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                      child: DropdownButtonFormField(
                        value: _selectedValue,
                        hint: Text(
                          'choose one',
                        ),
                        isExpanded: true,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value as String;
                          });
                        },
                        onSaved: (value) {
                          setState(() {
                            _selectedValue = value as String;
                          });
                        },
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "can't empty";
                          } else {
                            return null;
                          }
                        },
                        items: listOfValue.map((String val) {
                          return DropdownMenuItem(
                            value: val,
                            child: Text(
                              val,
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.add_circle_outlined,
                      color: Colors.grey.shade500,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Allergies",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Allergies sur médicaments",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Allergies alimentaires",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Allergies des maladies",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //_________________________________

              Divider(),
              SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.add_circle_outlined,
                      color: Colors.grey.shade500,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Adresse",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Allergies sur médicaments",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Allergies alimentaires",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Allergies des maladies",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Commune",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
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
                      child: DropdownButtonFormField(
                        value: _selectedValue,
                        hint: Text(
                          'choose one',
                        ),
                        isExpanded: true,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value as String;
                          });
                        },
                        onSaved: (value) {
                          setState(() {
                            _selectedValue = value as String;
                          });
                        },
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "can't empty";
                          } else {
                            return null;
                          }
                        },
                        items: listOfValue.map((String val) {
                          return DropdownMenuItem(
                            value: val,
                            child: Text(
                              val,
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //_________________________________
              ElevatedButton(
                onPressed: () {
                  /*
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => Accueil(),
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
                      Icon(Icons.save_alt_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sauvegarder l'information",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              const Divider()
            ],
          ),
        )
      ],
    );
  }
}
