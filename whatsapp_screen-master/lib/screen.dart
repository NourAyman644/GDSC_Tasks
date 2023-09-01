import 'package:flutter/material.dart';

/*class usermodel{
  final String name;
  final String message;
  usermodel({
    required this.message,
    required this.name,
});
}

 */
/*List<usermodel>users=[
  usermodel(message: "send homework", name: "karma"),//demo data
  usermodel(message: "المحاضرة اتلغت ", name: "yara"),//demo data
  usermodel(message: " hi...", name: "mam"),//demo data
  usermodel(message: " BYE BYE.....", name: "polly"),//demo data




];
*/
List<String> messages = <String>[
  'Mam',
  'My sister',
  'mai',
  'Ahmed',
  'Ahmed Hany',
  'Farah Ahmed',
  'Shrouk Ahmed',
  'Emad Sobhy',
  'MY phone',
  'Mohamed Brother',
  'Esraa',
  'Karma',
  'codeforces'
];
List<IconData> myIcons = [
  Icons.mic,
  Icons.done,
  Icons.mic,
  Icons.mic,
  Icons.done_all,
  Icons.mic,
  Icons.done_all,
  Icons.mic,
  Icons.mic,
  Icons.done,
  Icons.mic,
  Icons.done,
  Icons.mic,
  Icons.mic,
  Icons.done_all,
  Icons.mic,
];

class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(child : const Icon(Icons.camera_alt),
    onPressed: (){},
    backgroundColor: Colors.green,),
      appBar: AppBar(
        backgroundColor: Colors.green,
        //   leading: const Icon(Icons.menu),
        title: const Text(
          "WhatsAPP Chat",
        ),
        actions: const [
          Icon(
            Icons.search,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.comment),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
              ),
                accountName: Text(
                  "Nour ayman",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: Text("nourayman644@gmail.com"),

            )
          ],
        ),
      ),
      body: Container(
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: const CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.yellow,
                ),
                trailing: const Text("11:30 AM"),
                title: Text(
                  messages[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Icon(myIcons[index]),
                    const Text("  1:49"),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(
                  thickness: 1.5,
                  indent: 30,
                  endIndent: 30,
                ),
            itemCount: 13),
      ),
    );
  }
/*Widget buildchatiteam(usermodel users)=>ListTile(
    leading: const CircleAvatar(
      backgroundColor: Colors.cyan,
      radius: 28,

    ),
    title: Text('${users.name}',
      style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 18,
      ),

    ),
    subtitle: Text('${users.message}',
      style: TextStyle(

      ),
    ),
    trailing: Text("9:45 PM"),
  );*/
}
// list view
// build iteam
// BUILD LIST
// add iteam to list
