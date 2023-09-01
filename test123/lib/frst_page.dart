import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:io';
import 'schdl_page.dart';
import 'food_pagee.dart';
import 'spkr_page.dart';
//import 'package:image_picker/image_picker.dart';




class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  State<firstPage> createState() => _firstPageState();
}


class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(blue),
      body: Center(
        child: Column(children: [
          Container(
              padding: EdgeInsets.all(40),
              child: Text("GHOSTECH",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 40,
                      fontStyle: FontStyle.italic))),
          TextButton(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(40),
              height: 50,
              width: 150,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(
                    Icons.schedule,
                    color: Color(blue),
                    size: 40,
                  ),
                  Center(
                      child: Text(
                        " Schedule",
                        style: TextStyle(
                          color: Color(blue),
                          fontSize: 20,
                        ),
                      ))
                ],
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SchedulePage();
              }));
            },
          ),
          TextButton(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(40),
              height: 50,
              width: 150,
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Icon(
                    Icons.mic_external_on_rounded,
                    color: Color(blue),
                    size: 40,
                  ),
                  Center(
                      child: Text(
                        " Speaker",
                        style: TextStyle(
                          color: Color(blue),
                          fontSize: 20,
                        ),
                      ))
                ],
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SpeakerPage();
              }));
            },
          ),
          TextButton(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(40),
              height: 50,
              width: 150,
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Icon(
                    Icons.fastfood,
                    color: Color(blue),
                    size: 40,
                  ),
                  Center(
                      child: Text(
                        "  Food",
                        style: TextStyle(
                          color: Color(blue),
                          fontSize: 20,
                        ),
                      ))
                ],
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FoodPage();
              }));
            },
          ),
        ]),
      ),
    );
  }
}
