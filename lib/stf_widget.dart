// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';

class MyStateFullWidget extends StatefulWidget {
  const MyStateFullWidget({super.key});

  @override
  State<MyStateFullWidget> createState() => _MyStateFullWidgetState();
}

class _MyStateFullWidgetState extends State<MyStateFullWidget> {
  int count = 1;

  @override
  void initState() {
    super.initState();
    print(count);

    Timer.periodic(const Duration(seconds: 1), (timer) {
      count++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build+$count");
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Provider Management"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
              child: Text(
            "$count",
            style: const TextStyle(
              fontSize: 50,
            ),
          )),
        ],
      ),
    );
  }
}
