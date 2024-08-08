import 'package:flutter/material.dart';
import 'package:openbooks/pages/fill_page.dart';

class Chapt extends StatefulWidget {
  const Chapt({Key? key}) : super(key: key);

  @override
  State<Chapt> createState() => _ChaptState();
}

class _ChaptState extends State<Chapt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[200],
        shadowColor: Colors.black,
        elevation: 8,
        title: const Text("Chapter on book", style: TextStyle(color: Colors.black),),
        
      ),
      body: Column(
          children: [
            Card(
              child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Fill()));
              },
              title: const Text("Chapter1"),
              subtitle: const Text("Kisah awal dimulai"),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
              ),
            ),
            ),
            Card(
              child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Fill()));
              },
              title: const Text("Chapter2"),
              subtitle: const Text("Tahap kedua"),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
              ),
            ),
            ),
            Card(
              child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Fill()));
              },
              title: const Text("Chapter3"),
              subtitle: const Text("Tahap Ketiga"),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
              ),
            ),
            ),
          ],
        ),
    );
  }
}