import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../helpper/customListItem.dart';


class MainScreen extends StatefulWidget{
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainScreen createState() => _MainScreen();

  }
class _MainScreen extends State<MainScreen>{

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
  Widget build(BuildContext context) {
    return Scaffold(
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
  }

}