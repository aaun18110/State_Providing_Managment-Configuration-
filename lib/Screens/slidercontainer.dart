// ignore_for_file: avoid_print, non_constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/sliderprovider.dart';

class SlideProvider extends StatefulWidget {
  const SlideProvider({super.key});

  @override
  State<SlideProvider> createState() => _SlideProviderState();
}

class _SlideProviderState extends State<SlideProvider> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {});
    super.initState();
  }

  // double value = 1.0;
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<MultiplesProvider>(context, listen: false);

    print("Scaffold");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("State Multi-Provider Managmanet"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<MultiplesProvider>(builder: (context, value, child) {
              return Slider(
                  min: 0,
                  max: 1,
                  value: value.value,
                  onChanged: (val) {
                    value.setvalue(val);
                    print("change value");
                  });
            }),
            Consumer<MultiplesProvider>(builder: (context, value, child) {
              print("Change Container");
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.amber.withOpacity(value.value),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12))),
                      child: Center(
                        child: Text(
                            "${DateTime.now().hour}:${DateTime.now().second}:${DateTime.now().hour}"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(value.value),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12))),
                      child: Center(
                        child: Text(
                            "${DateTime.now().hour}:${DateTime.now().second}:${DateTime.now().hour}"),
                      ),
                    ),
                  )
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
