import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Remote Car Controller'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String action = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 147, 157, 215),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 300,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: _forward, child: const Text("Forward")),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: _left, child: const Text("Left")),
                            ElevatedButton(
                                onPressed: _stop, child: const Text("Stop")),
                            ElevatedButton(
                                onPressed: _right, child: const Text("Right")),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: _reverse, child: const Text("Reverse")),
                        Text(
                          action,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                      ]),
                ),
              )
            ],
          ),
        ));
  }

  void _forward() {
    action = "Forward";
    setState(() {});
  }

  void _left() {
    action = "Left";
    setState(() {});
  }

  void _stop() {
    action = "Stop";
    setState(() {});
  }

  void _right() {
    action = "Right";
    setState(() {});
  }

  void _reverse() {
    action = "Reverse";
    setState(() {});
  }
}
