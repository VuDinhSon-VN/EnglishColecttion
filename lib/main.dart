import 'package:colection_english/helpper/customListItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'helpper/convertJson.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
List _items = []; 


  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/DemoJson.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
      print(data["items"]);
    });

  }
  @override
  Widget build(BuildContext context) {return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Kindacode.com',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Load Data'),
              onPressed: readJson,
            ),

            // Display the data loaded from sample.json
                   Expanded(
                    child: ListView.builder(
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return CustomListItem(
                          word: _items[index]["word"],
                          example: _items[index]["example"],
                          translate: _items[index]["traslate"],
                        );
                      },
                    ),
                  )
          ],
        ),
      ),
    );
  }}
