import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/CountController.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final mainController = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text("counter:${mainController.count}")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                mainController.decrement();
              },
              child: const Text("Decrement")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("previous Screen"))
        ],
      )),
    );
  }
}
