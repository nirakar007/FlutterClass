import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.red)),
      // home: TestScreen(),
      home: Dashboard(),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          actions: [
            Icon(Icons.share),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 20),
              child: Icon(Icons.favorite),
            )
          ],
          centerTitle: true,
          leading: Icon(Icons.menu),
          title: Text("HushBulla",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.redAccent,
                  height: 200,
                  width: MediaQuery.of(context).size.width, // dynamic sizes
                  child: Stack(children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius:BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))
                      ),

                    ),
                    const Positioned( // because we've put static values, fetching from API and database will provide dynamic values
                      height: 80,
                      left: 20,
                      right: 20,
                      top: 60,
                      child: const Card( // gives a drop shadow
                        child: ListTile(
                            trailing: Icon(Icons.check_circle),
                            title: Text("Joe Bye Then"),
                            subtitle: Text("I love russia <3"),
                            leading: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/prez.jpeg"),
                            )),
                      ),
                    ),

                  ],

                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightGreenAccent,
                ),
              ],
            ),
            Card( // gives a drop shadow
              child: ListTile(
                  title: Text("Card"),
                  subtitle: Text("petition.com"),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/nyc.jpg"),
                  )),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Column(
                children: [
                  Center(
                      child: Text("~Monarch~"
                  "",
                          style: TextStyle(
                              color: Colors.lightBlueAccent, fontSize: 30, fontStyle: FontStyle.italic)),
                  )
                ],
              ),
            ),
            Image.network("https://assets.time.com/interactives/flag_colors/data/images/normal/li.png"),
            Image.network("https://assets.time.com/interactives/flag_colors/data/images/normal/li.png"),
            Image.network("https://assets.time.com/interactives/flag_colors/data/images/normal/li.png"),

          ],
        ),
      ),
    );
  }
}
