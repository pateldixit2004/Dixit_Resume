import 'dart:io';

import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtAdd = TextEditingController();

  List edList = ["BTECH", "BE", "BCA", "BCOM", "MBBS"];
  String? selectinEdu;
  bool isExp = false;
  List SkillList = [false, false, false];
  String selectFiled = "Anroid";
  RangeValues rangeSlide = RangeValues(10000, 25000);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: back,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Resume app"),
              centerTitle: true,
              backgroundColor: Colors.red,
              actions: [
                PopupMenuButton(
                  color: Colors.black,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        child: Text(
                      "Setting",
                      style: TextStyle(color: Colors.red.shade200),
                    )),
                    PopupMenuItem(
                        child: Text(
                      "Proflie",
                      style: TextStyle(color: Colors.red.shade200),
                    )),
                    PopupMenuItem(
                        child: Text(
                      "Help",
                      style: TextStyle(color: Colors.red.shade200),
                    )),
                  ],
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
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
                          controller: txtname,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2)),
                            border: OutlineInputBorder(),
                            hintText: "Full Name",
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: txtAdd,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2)),
                            border: OutlineInputBorder(),
                            hintText: "Address",
                          ),
                        ),
                        SizedBox(height: 10),

                        ListTile(
                            title: Text("Expressies"),
                            enabled: true,
                            leading: Icon(Icons.person_add_alt),
                            tileColor: Colors.red.shade200,
                            trailing: Switch(
                              activeColor: Colors.red,
                              value: isExp,
                              onChanged: (value) {
                                setState(() {
                                  isExp = value;
                                });
                              },
                            )),
                        Visibility(
                          visible: isExp,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                      value: SkillList[0],
                                      onChanged: (value) {
                                        setState(() {
                                          SkillList[0] = value!;
                                        });
                                      },
                                      activeColor: Colors.red.shade200),
                                  Text("Dart Languge"),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: SkillList[1],
                                      onChanged: (value) {
                                        setState(() {
                                          SkillList[1] = value!;
                                        });
                                      },
                                      activeColor: Colors.red.shade200),
                                  Text("Swich Languge"),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: SkillList[2],
                                      onChanged: (value) {
                                        setState(() {
                                          SkillList[2] = value!;
                                        });
                                      },
                                      activeColor: Colors.red.shade200),
                                  Text("Java Languge"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        ListTile(
                          title: Text("Education"),
                          enabled: true,
                          leading: Icon(Icons.person_add_alt),
                          tileColor: Colors.red.shade200,
                        ),
                        SizedBox(height: 10),
                        DropdownButton(
                          items: edList
                              .map((e) => DropdownMenuItem(
                                    child: Center(child: Text("$e")),
                                    value: e,
                                  ))
                              .toList(),
                          value: selectinEdu,
                          isExpanded: true,
                          dropdownColor: Colors.red.shade200,
                          hint: Center(child: Text("====Serch====")),
                          onChanged: (value) {
                            setState(() {
                              selectinEdu = value as String;
                            });
                          },
                        ),
                        ListTile(
                          title: Text("Soft Skill"),
                          enabled: true,
                          leading: Icon(Icons.person_add_alt),
                          tileColor: Colors.red.shade200,
                        ),
                        RadioListTile(
                            activeColor: Colors.red,
                            value: "Anroid",
                            groupValue: selectFiled,
                            onChanged: (value) {
                              setState(() {
                                selectFiled = value!;
                              });
                            },
                            title: Text("Anroid")),
                        RadioListTile(
                            activeColor: Colors.red,
                            value: "iOs",
                            groupValue: selectFiled,
                            onChanged: (value) {
                              setState(() {
                                selectFiled = value!;
                              });
                            },
                            title: Text("iOs")),
                        RadioListTile(
                            activeColor: Colors.red,
                            value: "Flutter",
                            groupValue: selectFiled,
                            onChanged: (value) {
                              setState(() {
                                selectFiled = value!;
                              });
                            },
                            title: Text("Flutters")),
                        ExpansionTile(
                          title: Text("Salary"),
                          // enabled: true,
                          leading: Icon(Icons.person_add_alt),
                          // tileColor: Colors.red.shade200,
                          collapsedTextColor: Colors.red,
                          collapsedIconColor: Colors.red,
                          textColor: Colors.red,
                          iconColor: Colors.red,
                          children: [
                            RangeSlider(
                              values: rangeSlide,
                              labels: RangeLabels("${rangeSlide.start.round()}",
                                  "${rangeSlide.end.round()}"),
                              inactiveColor: Colors.red,
                              activeColor: Colors.red,
                              onChanged: (value) {
                                setState(() {
                                  rangeSlide = value;
                                });
                              },
                              divisions: 20,
                              max: 100000,
                            ),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {
                              var skill = "";
                              if (SkillList[0] == true) {
                                skill = "$skill Dart Languge";
                              }
                              if (SkillList[1] == true) {
                                skill = "$skill Swich Languge";
                              }
                              if (SkillList[2] == true) {
                                skill = "$skill Java Languge";
                              }
                              var name = txtname.text;
                              var address = txtAdd.text;
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                    "$name $address $skill $selectinEdu $selectFiled $rangeSlide"),
                                action: SnackBarAction(
                                  label: "undo",
                                  onPressed: () {},
                                ),
                              ));
                            },
                            child: Text("Show"))
                        // ElevatedButton(onPressed: () {
                        //   showDialog(barrierDismissible: false,context: context, builder: (context) {
                        //
                        //     return AlertDialog(
                        //       title: Text("Are You Sure"),
                        //       content: Row(
                        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //         children: [
                        //           ElevatedButton(onPressed: () {
                        //            print("HYY");
                        //           }, child: Text("YES")),
                        //           ElevatedButton(onPressed: () {
                        //             Navigator.pop(context);
                        //           }, child: Text("NO"))
                        //         ],
                        //       ),
                        //     );
                        //   },);
                        // }, child: Text("Sumiit")),
                        // RangeSlider(values: rangeSlide,
                        //   labels: RangeLabels("${rangeSlide.start.round()}","${rangeSlide.end.round()}"),
                        //   inactiveColor: Colors.red,
                        //   onChanged: (value) {
                        //   setState(() {
                        //     rangeSlide = value;
                        //   });
                        // },
                        // divisions: 20,
                        // max: 100000,),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  void ShowExitDialog() {
    ElevatedButton(
        onPressed: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Are You Sure"),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          print("htt");
                        },
                        child: Text("YES")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("NO"))
                  ],
                ),
              );
            },
          );
        },
        child: Text("Sumiit"));
  }

  Future<bool> back() async {
    ShowExitDialog();
    return await false;
  }
}
