import 'package:flutter/material.dart';
import 'package:test123/frst_page.dart';
import 'main.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  final _formStatetopic =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(blue),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              Container(
                  padding: EdgeInsets.all(50),
                  child: Text("SCHEDULE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 40,
                          fontStyle: FontStyle.italic))),

              DropdownButton(

                dropdownColor: Color(blue),

                style: TextStyle(color: Colors.white),
                value: dropdownday,
                items: items_day.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownday = newValue!;
                  });
                },
              ),
              SizedBox(height: 20,),
              Center(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Text("Topic Name",style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(width: 20,),
                    Text("    From  ",style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(width: 20,),
                    Text("      To ",style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(width: 20,),

                  ],

                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Form(
                      key: _formStatetopic,
                      child:Container(
                        width: 130,
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            onChanged: (text) {
                              value = text;
                            },
                            controller: mycontroller_topic,
                            validator: (text) {
                              if (text =='') {
                                return 'please enter topic';
                              }
                            },

                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),

                              hintText: " Topic ",
                              hintStyle: TextStyle(color: Colors.white),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.topic,
                                  color: Colors.white,
                                ),
                              ),
                            )
                        ),

                      ),
                    ),
                    SizedBox(width: 20,),
                    DropdownButton(

                      dropdownColor: Color(blue),

                      style: TextStyle(color: Colors.white),
                      value: dropdowntime_from,
                      items: items_time.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdowntime_from = newValue!;
                        });
                      },
                    ),

                    SizedBox(width: 20,),
                    DropdownButton(

                      dropdownColor: Color(blue),

                      style: TextStyle(color: Colors.white),
                      value: dropdowntime_to,
                      items: items_time.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdowntime_to = newValue!;
                        });
                      },
                    ),

                  ],
                ),
              ),
              SizedBox(height: 30,),
              TextButton(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.all(20),
                  height: 40,
                  width: 100,
                  child: Center(
                      child: Text(
                        " Submit ",
                        style: TextStyle(
                          color: Color(blue),
                          fontSize: 20,
                        ),
                      )),
                ),
                onPressed: () {
                  if(_formStatetopic.currentState!.validate())
                  {Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SchedulePage();
                  }));}
                  else
                  {}

                },
              ),
              TextButton(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 100,
                  child: Center(
                      child: Text(
                        " Back ",
                        style: TextStyle(
                          color: Color(blue),
                          fontSize: 20,
                        ),
                      )),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return firstPage();
                  }));
                },
              ),

            ],

          ),

        ),
      ),
    );
  }
}

