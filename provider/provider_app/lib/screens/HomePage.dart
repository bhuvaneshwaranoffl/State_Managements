import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/Controller/CountController.dart';
import 'package:provider_app/screens/SecondScreen.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
      final providerCount = Provider.of<CountController>(context, listen: false);
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Consumer<CountController>(
           builder: (context,prodValue,child) {
             return Text("counter:${prodValue.count}");
           }
         ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {
          providerCount.increment();
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
