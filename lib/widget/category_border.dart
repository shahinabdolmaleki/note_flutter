import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget categoryWidget() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          categoryData(
              color: HexColor('#0B0B0B'),
              textColor: Colors.white,
              textData: 'All'),
          categoryData(
              color: Colors.white,
              textColor: Colors.black,
              textData: 'Important'),
          categoryData(
              color: Colors.white,
              textColor: Colors.black,
              textData: 'Lecture notes'),
          categoryData(
              color: Colors.white,
              textColor: Colors.black,
              textData: 'To-do lists'),
          categoryData(
              color: Colors.white,
              textColor: Colors.black,
              textData: 'shoping'),
        ],
      ),
    ),
  );
}

Widget categoryData(
    {required Color color,
    required Color textColor,
    required String textData}) {
  return Padding(
    padding: const EdgeInsets.only(top: 5.0, right: 8),
    child: Container(
      height: 40,
      width: 125,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          textData,
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      ),
    ),
  );
}
