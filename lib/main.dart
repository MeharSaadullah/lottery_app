import 'dart:io';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Lottery App'),
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text('Your winning number is 4'),
                ),
                Container(
                    height: 250,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: x == 4
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.done_all,
                                color: Colors.black,
                                size: 35,
                              ),
                              Text(
                                'Congratulations you have won lottery,your number is $x\n ',
                                textAlign: TextAlign.center,
                              )
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.error,
                                color: Colors.red,
                                size: 35,
                              ),
                              Text(
                                'Better luck next time your number is $x\n try again',
                                textAlign: TextAlign.center,
                              )
                            ],
                          ))
              ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              x = random.nextInt(15);
              print(x);
              setState(() {});
            },
            child: Icon(Icons.refresh),
          )),
    );
  }
}
