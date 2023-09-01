import 'package:flutter/material.dart';
import 'main.dart';
import 'frst_page.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';



class SpeakerPage extends StatefulWidget {
  const SpeakerPage({Key? key}) : super(key: key);

  @override
  State<SpeakerPage> createState() => _SpeakerPageState();
}

class _SpeakerPageState extends State<SpeakerPage> {



  File? _imagespeaker;

  Future<void> _selectPhotospeaker() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _imagespeaker = File(pickedImage.path);
      });
    }
  }





  final _formStatename =GlobalKey<FormState>();
  final _formStatetitle =GlobalKey<FormState>();
  final _formStatefacebok =GlobalKey<FormState>();
  final _formStatelinkedin =GlobalKey<FormState>();
  final _formStateyoutube =GlobalKey<FormState>();
  final _formStatediscribe =GlobalKey<FormState>();
  final _formStateachive =GlobalKey<FormState>();
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
                  child: Text("SPEAKER",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 40,
                          fontStyle: FontStyle.italic))),
              InkWell(
                onTap: _selectPhotospeaker,
                child: Container(
                  width: 160,
                  height: 220,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: _imagespeaker != null
                      ? Image.file(
                    _imagespeaker!,
                    fit: BoxFit.cover,
                  )
                      : Icon(
                    Icons.add_a_photo,
                    size: 50,
                    color: Colors.grey[600],
                  ),
                ),
              ),

              //speaker name
              SizedBox(height: 20,),
              Center(
                child: Row(
                children: [
                  SizedBox(width: 10,),

                  Form(
                    key: _formStatename,
                    child:Container(
                      width: 320,
                      child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          onChanged: (text) {
                            value = text;
                          },
                          controller: mycontroller_topic,
                          validator: (text) {
                            if (text =='') {
                              return 'please enter name';
                            }
                            return null;
                          },

                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),

                            labelText: " Speaker Name ",
                            labelStyle: TextStyle(color: Colors.white),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.person_rounded,
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

              //speaker title
              SizedBox(height: 20,),
              Center(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Form(
                      key: _formStatetitle,
                      child:Container(
                        width: 320,
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            onChanged: (text) {
                              value = text;
                            },
                            controller: mycontroller_topic,
                            validator: (text) {
                              if (text =='') {
                                return 'please enter title';
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),

                              labelText: " Speaker Title ",
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.perm_identity,
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
                      key: _formStatediscribe,
                      child:Container(
                        width: 320,
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                          minLines: 1,
                            maxLines: 10,
                            onChanged: (text) {
                              value = text;
                            },
                            controller: mycontroller_discribe,
                            validator: (text) {
                              if (text =='') {
                                return 'please enter description or none';
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),

                              labelText: " Description ",
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
              //achivements
              Center(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Form(
                      key: _formStateachive,
                      child:Container(
                        width: 320,
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            onChanged: (text) {
                              value = text;
                            },
                            controller: mycontroller_achive,
                            validator: (text) {
                              if (text =='') {
                                return 'please enter achivements or none';
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),

                              labelText: " Achivements ",
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.list,
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

              //facebook
              Center(
                child: Row(
                  children: [

                    SizedBox(width: 10,),
                    Form(
                      key: _formStatefacebok,
                      child:Container(
                        width: 320,
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            onChanged: (text) {
                              value = text;
                            },
                            controller: mycontroller_facebok,
                            validator: (text) {
                              if (text =='') {
                                return 'please enter link or none';
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),

                              labelText: " Facebook ",
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.facebook,
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
              //linkedin
              Center(
                child: Row(
                  children: [

                    SizedBox(width: 10,),
                    Form(
                      key: _formStatelinkedin,
                      child:Container(
                        width: 320,
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            onChanged: (text) {
                              value = text;
                            },
                            controller: mycontroller_linkedin,
                            validator: (text) {
                              if (text =='') {
                                return 'please enter link or none';
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),

                              labelText: " Linked in ",
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.insert_link_sharp,
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
              //youtube
              Center(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Form(
                      key: _formStateyoutube,
                      child:Container(
                        width: 320,
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            onChanged: (text) {
                              value = text;
                            },
                            controller: mycontroller_youtube,
                            validator: (text) {
                              if (text =='') {
                                return 'please enter link or none';
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(95),),

                              labelText: " Youtube ",
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.smart_display,
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
                  if(_formStatename.currentState!.validate()||_formStatetitle.currentState!.validate()
                      ||_formStatediscribe.currentState!.validate()||_formStateachive.currentState!.validate()
                      ||_formStatelinkedin.currentState!.validate()||_formStatefacebok.currentState!.validate()
                      ||_formStateyoutube.currentState!.validate())
                  {Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SpeakerPage();
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
