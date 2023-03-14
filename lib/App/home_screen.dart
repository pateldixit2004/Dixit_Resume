import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  bool isExp= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume app"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          PopupMenuButton(color: Colors.black,shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          ),itemBuilder: (context) => [
            PopupMenuItem(child: Text("Setting",style: TextStyle(color: Colors.white),)),
            PopupMenuItem(child: Text("Proflie",style: TextStyle(color: Colors.red),)),
            PopupMenuItem(child: Text("Help",style: TextStyle(color: Colors.red),)),
          ],)
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Personal"),
            enabled: true,
            leading: Icon(Icons.person_add_alt),
            tileColor: Colors.red.shade200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 2)),

                    border: OutlineInputBorder(

                    ),
                    hintText: "Full Name",
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 2)),

                    border: OutlineInputBorder(

                    ),
                    hintText: "Address",
                  ),
                ),
                ListTile(
                  title: Text("Expressies"),
                  enabled: true,
                  leading: Icon(Icons.person_add_alt),
                  tileColor: Colors.red.shade200,
                  trailing: Switch(activeColor: Colors.red,value:isExp ,onChanged: (value){
                    setState(() {
                      isExp = value;
                    });
                  },)
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
