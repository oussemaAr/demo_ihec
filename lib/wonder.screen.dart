import 'dart:math';

import 'package:flutter/material.dart';

class WonderScreen extends StatefulWidget {
  WonderScreen({Key? key}) : super(key: key);

  @override
  State<WonderScreen> createState() => _WonderScreenState();
}

class _WonderScreenState extends State<WonderScreen> {
  var wonderList = [
    "china.png",
    "england.png",
    "europe.png",
    "italy.png",
    "mexico.png",
    "petra.png"
  ];

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            if (index == 0)
              Text("Press the random button")
            else
              Image.asset("assets/${wonderList[index]}"),
            OutlinedButton(
                onPressed: () {
                  setState(
                    () {
                      index = Random().nextInt(6);
                      print(index);
                    },
                      );
                },
                child: Text("Random")),
            OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back")),
          ],
        ),
      ),
    );
  }
}
