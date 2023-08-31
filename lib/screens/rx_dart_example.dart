import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class RxDartExample extends StatefulWidget {
  const RxDartExample({super.key});

  @override
  State<RxDartExample> createState() => _RxDartExampleState();
}

class _RxDartExampleState extends State<RxDartExample> {
  final countStream = BehaviorSubject<String>();

  Stream<String> get countListener => countStream.stream;

  @override
  void initState() {
    super.initState();
    streamFlow();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("RxDart Example"),
          backgroundColor: Colors.lightBlue),
      body: Column(
        children: [
          StreamBuilder<String>(
            stream: countListener,
            initialData: "",
            builder: (context, snapshot) {
              return Text(
                "Stream Data -> ${snapshot.data}",
                style: const TextStyle(color: Colors.blueGrey, fontSize: 30),
              );
            },
          )
        ],
      ),
    );
  }

  void streamFlow() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      countStream.add(i.toString());
    }
  }
}
