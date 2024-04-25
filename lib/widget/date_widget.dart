import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget dateWidget() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          dataDateWidget(
              color: '#181818',
              textColor: Colors.white,
              day: 25,
              week: 'Tue',
              month: 'Apr'),
          dataDateWidget(
              color: '#FFFFFF',
              textColor: Colors.black,
              day: 26,
              week: 'Tue',
              month: 'Apr'),
          dataDateWidget(
              color: '#FFFFFF',
              textColor: Colors.black,
              day: 27,
              week: 'Tue',
              month: 'Apr'),
          dataDateWidget(
              color: '#FFFFFF',
              textColor: Colors.black,
              day: 28,
              week: 'Tue',
              month: 'Apr'),
          dataDateWidget(
              color: '#FFFFFF',
              textColor: Colors.black,
              day: 29,
              week: 'Tue',
              month: 'Apr'),
          dataDateWidget(
              color: '#FFFFFF',
              textColor: Colors.black,
              day: 30,
              week: 'Tue',
              month: 'Apr'),
          dataDateWidget(
              color: '#FFFFFF',
              textColor: Colors.black,
              day: 31,
              week: 'Tue',
              month: 'Apr'),
        ],
      ),
    ),
  );
}

Widget dataDateWidget(
    {required String color,
    required Color textColor,
    required int day,
    required String week,
    required String month}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0, right: 8),
    child: Container(
      height: 150,
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: HexColor(color),
        borderRadius: const BorderRadius.all(
          Radius.circular(27),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            week,
            style: TextStyle(color: textColor, fontSize: 19),
          ),
          Text(
            day.toString(),
            style: TextStyle(
              color: textColor,
              fontSize: 30,
            ),
          ),
          Text(
            month,
            style: TextStyle(color: textColor, fontSize: 19),
          ),
        ],
      ),
    ),
  );
}
