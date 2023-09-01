import 'package:flutter/material.dart';
import 'main.dart';
import 'frst_page.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';




class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final _formStaterest =GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Color(blue),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(50),
                  child: Text("FOOD",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 40,
                          fontStyle: FontStyle.italic))),
              SizedBox(height: 100,),

              Form(
                key: _formStaterest,
                child: Container(
                  width: 500,
                  child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      onChanged: (text) {
                        value = text;
                      },
                      controller: mycontroller_rest,
                      validator: (text) {
                        if (text =='') {
                          return 'please enter the restaurant';
                        }
                      },

                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),
                        hintText: "  Restraurant name",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.restaurant,
                            color: Colors.white,
                          ),
                        ),
                      )
                  ),
                ),
              ),
              SizedBox(width: 15,),


              TextButton(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.all(40),
                  height: 50,
                  width: 150,
                  child: Center(
                      child: Text(
                        " Next ",
                        style: TextStyle(
                          color: Color(blue),
                          fontSize: 20,
                        ),
                      )),
                ),
                onPressed: () {
                  if(_formStaterest.currentState!.validate())
                  {Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AddFood();
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
                  height: 50,
                  width: 150,
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






class AddFood extends StatefulWidget {
  const AddFood({Key? key}) : super(key: key);

  @override
  State<AddFood> createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {



  final _formStatemeal =GlobalKey<FormState>();
  final _formStatemealdisc =GlobalKey<FormState>();
  final _formStatebefore =GlobalKey<FormState>();
  final _formStateafter =GlobalKey<FormState>();

  File? _imagefood;

  Future<void> _selectPhotofood() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _imagefood = File(pickedImage.path);
      });
    }
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(blue),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(50),
                  child: Text("Add Meal",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 40,
                          fontStyle: FontStyle.italic))),


              InkWell(
                onTap: _selectPhotofood,
                child: Container(
                  width: 160,
                  height: 220,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: _imagefood != null
                      ? Image.file(
                    _imagefood!,
                    fit: BoxFit.cover,
                  )
                      : Icon(
                    Icons.add_a_photo,
                    size: 50,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Row(
                  children: [
                    SizedBox(width: 10,),

                    Form(
                      key: _formStatemeal,
                      child:Container(
                        width: 320,
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            onChanged: (text) {
                              value = text;
                            },
                            controller: mycontroller_meal,
                            validator: (text) {
                              if (text =='') {
                                return 'please enter name';
                              }
                            },

                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),

                              labelText: " Meal Name ",
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.fastfood,
                                  color: Colors.white,
                                ),
                              ),
                            )
                        ),

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              //discribtion
              Center(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Form(
                      key: _formStatemealdisc,
                      child:Container(
                        width: 320,
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            minLines: 1,
                            maxLines: 10,
                            onChanged: (text) {
                              value = text;
                            },
                            controller: mycontroller_meal_disc,
                            validator: (text) {
                              if (text =='') {
                                return 'please enter description or none';
                              }
                            },

                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),

                              labelText: " Meal Description ",
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.info_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            )
                        ),

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Text("Price",style: TextStyle(color: Colors.white,fontSize: 20),),
                  SizedBox(width: 10,),

                  Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),

                        Form(
                          key: _formStatebefore,
                          child:Container(
                            width: 120,
                            child: TextFormField(
                                style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.number,
                                onChanged: (text) {
                                  value = text;
                                },
                                controller: mycontroller_before,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),
                                  labelText: " Before ",
                                  labelStyle: TextStyle(color: Colors.white,fontSize: 15),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.all(5.0),

                                  ),
                                )
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),

                        Form(
                          key: _formStateafter,
                          child:Container(
                            width: 120,
                            child: TextFormField(
                                keyboardType: TextInputType.number,
                                style: TextStyle(color: Colors.white),
                                onChanged: (text) {
                                  value = text;
                                },
                                controller: mycontroller_after,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),
                                  labelText: " After ",
                                  labelStyle: TextStyle(color: Colors.white,fontSize: 15),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.all(5.0),

                                  ),
                                )
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),



                ],
              ),
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
                  if(_formStatemealdisc.currentState!.validate()||_formStatemeal.currentState!.validate())
                  {Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AddFood();
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


