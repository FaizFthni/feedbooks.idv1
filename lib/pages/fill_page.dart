import 'package:flutter/material.dart';

class Fill extends StatefulWidget {
  const Fill({Key? key}) : super(key: key);

  @override
  State<Fill> createState() => _FillState();
}

class _FillState extends State<Fill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[200],
        title: const Text("Chapter 1"),
        shadowColor: Colors.black,
        elevation: 8,
      ),
      body: const Column(
        children: [
          Text("test")
        ],
      ),
    );
  }
}