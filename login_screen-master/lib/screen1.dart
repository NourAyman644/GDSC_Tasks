import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown.withOpacity(0.6),
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          "شركه المرعبين المحدوده",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.brown,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assent/images/download.png"),
                      radius: 130,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.red.withOpacity(0.7),
                        width: 4.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "مدام/ روز زهرة الخريف المتفتحة",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "انا حطاك في دماغي وبراقبك وهراقبك ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.3),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      prefixIcon: const Icon(
                        Icons.mail_sharp,
                      ),
                      hintText: "email",
                      labelText: "email",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.3),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      prefixIcon: const Icon(
                        Icons.phone,
                      ),
                      hintText: "phone",
                      labelText: "phone",
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
