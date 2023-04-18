// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import './my_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const MyWidget("Eu", Colors.blue, 20, 20),
                const MyWidget("Amo", Colors.red, 10, 9),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MyWidget("a", Colors.purple, 30, 10),
                    const MyWidget("aula", Colors.green, 30, 10),
                    const MyWidget("da", Colors.indigo, 10, 5)
                  ],
                ),
                const MyWidget("Tânia", Colors.yellow, 20, 10),
              ],
          )
        ),
      )
    );
  }
}
