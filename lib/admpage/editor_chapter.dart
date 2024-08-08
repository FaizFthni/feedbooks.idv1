
import 'package:flutter/material.dart';

class EditChapter extends StatefulWidget {
  const EditChapter({Key? key}) : super(key: key);

  @override
  State<EditChapter> createState() => _EditChapterState();
}

class _EditChapterState extends State<EditChapter> {
  late TextEditingController chaptercontroller;
  late TextEditingController fillcontroller;


  @override
  void initState() {
    super.initState();
    chaptercontroller = TextEditingController();
    fillcontroller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    chaptercontroller.dispose();
    fillcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Add and Edit Chapter",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [IconButton(
          onPressed: (){}, 
        icon: const Icon(Icons.check))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          TextFormField(
            controller: chaptercontroller,
            decoration: const InputDecoration(
              hintText: 'Chapter book',
              label: Text("Input Chapter")
            ),
          ),
          const SizedBox(height: 10,),
          TextFormField(
            controller: fillcontroller,
            decoration: const InputDecoration(
              hintText: 'Fill book',
              label: Text("Input Fill")
            ),
          ),
        ]),
      )
    );
  }
}