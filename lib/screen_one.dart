import 'package:lab04/main.dart';
import 'package:flutter/material.dart';
import 'screen_two.dart';

class secreen_one extends StatefulWidget {
  const secreen_one({super.key});

  @override
  State<secreen_one> createState() => _secreen_oneState();
}

class _secreen_oneState extends State<secreen_one> {
  String Radgroup = "";
  List myitems = ["Toyota", "Mercedes", "Land Rover", "BMW"];
  String selecteditem = "BMW";

  bool C1checkval = false;
  bool C2checkval = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Lobster"),
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 15, 88, 17),
            ),
            drawer: Drawer(),
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.oikoi.eu/wp-content/uploads/2019/05/04-13-1024x684.jpg"),
                      fit: BoxFit.cover)),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Center(
                    child: ListView(children: [
                  Text("Welcome to the mystery world ",
                      style: TextStyle(fontSize: 25, color: Colors.grey)),
                  DropdownButton(
                    iconEnabledColor: Colors.white,
                    alignment: Alignment.center,
                    value: selecteditem,
                    dropdownColor: Color.fromARGB(255, 15, 88, 17),
                    items: myitems
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                "${e}",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 93, 175, 216),
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selecteditem = val.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      "Sports Car",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: "Sports Car",
                    groupValue: Radgroup,
                    onChanged: (val) {
                      setState(() {
                        Radgroup = val.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      "family car",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: "family car",
                    groupValue: Radgroup,
                    onChanged: (val) {
                      setState(() {
                        Radgroup = val.toString();
                      });
                    },
                  ),
                  Car("Seat and steering wheel heating system"),
                  Car("Add a four-wheel drive system"),
                  Car("Add the automatic parking system"),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return secreen_two();
                        })));
                      });
                    },
                    child: Text("Payment and purchase"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return Home();
                        })));
                      });
                    },
                    child: Text("Back to the home page"),
                  ),
                ])),
              ),
            )));
  }
}

class Car extends StatelessWidget {
  Car(this.checkname);
  String? checkname;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("${checkname}"),
        chwidget(),
      ],
    );
  }
}

class chwidget extends StatefulWidget {
  const chwidget({super.key});

  @override
  State<chwidget> createState() => _chwidgetState();
}

class _chwidgetState extends State<chwidget> {
  bool isChecked = false;
  String? checkname;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
