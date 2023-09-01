import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_screen/screen.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controlemail=TextEditingController();
    var controlpassword=TextEditingController();
    var formkey=GlobalKey<FormState>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(

          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Image(
                  image: AssetImage("assents/images/download.png"),
                  height: 105,
                  width: 90,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: controlemail,
                  keyboardType:TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    )),
                    prefixIcon: Icon(
                      CupertinoIcons.envelope,
                    ),
                    hintText: "Email",
                    labelText: "Email",

                  ),

                  validator:( value){
                    if(value==Null)
                      return 'Please enter email';
                    if(value!='gdsc@gmail.com')
                      return'wrong email';
                    else
                      return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                 TextFormField(

                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    )),
                    prefixIcon: Icon(
                      CupertinoIcons.eye,
                    ),
                    hintText: "Password",
                    labelText: "Password",
                  ),
                     validator:( value){
                     if(value==Null)
                       return 'Please enter password';
                       if(value!='gdsc')
                         return'wrong password';
                       else
                         return null;
                     },

                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  first()),
                      );
                    },
                    child: Text(
                      "login",
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
