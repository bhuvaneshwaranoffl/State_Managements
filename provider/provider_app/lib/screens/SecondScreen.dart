import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/Controller/CountController.dart';


class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CountController>(context,listen: false);
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CountController>(
            builder: (context,countValue,child) {
              return Text("counter:${provider.count}");
            }
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                provider.decrement() ;
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
