//import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

import 'frst_page.dart';



void main() => runApp(const MyApp());



var blue = 0xff124e78;
var value;
var widt=320;

//drop down for days
String dropdownday="Day 1";
var items_day=["Day 1","Day 2","Day 3","Day 4","Day 5"];

//drop down for time
String dropdowntime_from="09:00 AM";
String dropdowntime_to="09:00 AM";
var items_time=[
  "09:00 AM","09:15 AM","09:30 AM","09:45 AM",
  "10:00 AM","10:15 AM","10:30 AM","10:45 AM",
  "11:00 AM","11:15 AM","11:30 AM","11:45 AM",
  "12:00 PM","12:15 PM","12:30 PM","12:45 PM",
  "01:00 PM","01:15 PM","01:30 PM","01:45 PM",
  "02:00 PM","02:15 PM","02:30 PM","02:45 PM",
  "03:00 PM","03:15 PM","03:30 PM","03:45 PM","04:00 PM"];



TextEditingController mycontroller_rest = TextEditingController();
TextEditingController mycontroller_topic = TextEditingController();
TextEditingController mycontroller_name = TextEditingController();
TextEditingController mycontroller_title = TextEditingController();
TextEditingController mycontroller_linkedin = TextEditingController();
TextEditingController mycontroller_facebok = TextEditingController();
TextEditingController mycontroller_youtube = TextEditingController();
TextEditingController mycontroller_discribe = TextEditingController();
TextEditingController mycontroller_achive = TextEditingController();
TextEditingController mycontroller_meal = TextEditingController();
TextEditingController mycontroller_meal_disc = TextEditingController();
TextEditingController mycontroller_before = TextEditingController();
TextEditingController mycontroller_after = TextEditingController();










class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:firstPage(),
    );
  }
}



















