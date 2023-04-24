// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:single_state_provider_man/Provider/countprovider.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      final countProvider = Provider.of<CountProvider>(context, listen: false);
      countProvider.countNumber();
      print("rebuild");
    });
  }

  @override
  Widget build(BuildContext context) {
    print("scafffold");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("State Provider Managment"),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CountProvider>(
              builder: (context, value, child) {
                print("Date");
                return Text(
                  "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            Center(child: Consumer<CountProvider>(
              builder: (context, value, child) {
                print("text build");
                return Text(
                  // countProvider.count.toString(),
                  value.count.toString(),
                  style: const TextStyle(fontSize: 50),
                );
              },
            ))
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("tap");

          // countProvider.countNumber();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
