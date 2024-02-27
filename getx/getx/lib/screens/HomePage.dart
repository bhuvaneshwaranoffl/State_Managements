import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/CountController.dart';
import 'package:getx/screens/SecondScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          ElevatedButton(onPressed: () {
            mainController.increment();
          }, child: const Text("Increment")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()));
              },
              child: const Text("Next Screen"))
        ],
      )),
    );
  }
}
