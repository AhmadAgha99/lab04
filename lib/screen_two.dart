import 'package:lab04/main.dart';
import 'package:flutter/material.dart';
import 'package:lab04/screen_one.dart';

class secreen_two extends StatefulWidget {
  const secreen_two({super.key});

  @override
  State<secreen_two> createState() => _secreen_twoState();
}

class _secreen_twoState extends State<secreen_two> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Anton"),
        home: Scaffold(
            appBar: AppBar(backgroundColor: Color.fromARGB(255, 15, 88, 17)),
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://paulives-photographer.com/wp-content/uploads/2018/04/Vindis-Bury-04_15-053-copy-1024x683.jpg"),
                        fit: BoxFit.cover)),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Click here to purchase",
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromARGB(255, 34, 33, 33))),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Complete the payment process",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return secreen_one();
                              }));
                            });
                          },
                          child: Text(
                            "Re-select the car and specifications again",
                            style: TextStyle(color: Colors.white),
                          ),
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
                      ]),
                ))));
  }
}
