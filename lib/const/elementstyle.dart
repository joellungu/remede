import 'package:flutter/material.dart';

Widget elementStyle(
    {IconData? icon1,
    Color? couleur1,
    String? text1,
    IconData? icon2,
    Color? couleur2,
    String? text2}) {
  DateTime date = DateTime.now();
  return Container(
    //color: Colors.blue,
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
                  icon1,
                  color: couleur1, //Colors.green,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  text1!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    text2!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )),
      ],
    ),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 1,
        ),
      ),
    ),
  );
}
