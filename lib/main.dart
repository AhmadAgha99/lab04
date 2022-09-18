import 'package:flutter/material.dart';
import 'screen_one.dart';
import 'screen_two.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Lobster'),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 15, 88, 17),
          title: Text(
            "TurboCar",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        drawer: Drawer(),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/736x/b5/62/2a/b5622af21f341225de7806635f48ecf2--exeter-architecture.jpg"),
                  fit: BoxFit.cover)),
          child: SizedBox(
            width: double.infinity,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return secreen_one();
                      }));
                    });
                  },
                  child: Text("You choose your car")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return secreen_two();
                      }));
                    });
                  },
                  child: Text("Click here to make a purchase")),
            ]),
          ),
        ));
  }
}
