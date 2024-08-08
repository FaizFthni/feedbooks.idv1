
import 'package:flutter/material.dart';

class EditorPages extends StatefulWidget {
  const EditorPages({Key? key}) : super(key: key);

  @override
  State<EditorPages> createState() => _EditorPagesState();
}

class _EditorPagesState extends State<EditorPages> {
  late TextEditingController namecontroller;
  late TextEditingController authorcontroller;
  late TextEditingController genrecontroller;
  late TextEditingController deskripsicontroller;


  @override
  void initState() {
    super.initState();
    namecontroller = TextEditingController();
    authorcontroller = TextEditingController();
    genrecontroller = TextEditingController();
    deskripsicontroller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    namecontroller.dispose();
    authorcontroller.dispose();
    genrecontroller.dispose();
    deskripsicontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Add and Editor Book",style: TextStyle(color: Colors.white),),
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
            controller: namecontroller,
            decoration: const InputDecoration(
              hintText: 'title book',
              label: Text("Input Book name")
            ),
          ),
          const SizedBox(height: 10,),
          TextFormField(
            controller: authorcontroller,
            decoration: const InputDecoration(
              hintText: 'Author book',
              label: Text("Input Author")
            ),
          ),
          const SizedBox(height: 10,),
          TextFormField(
            controller: genrecontroller,
            decoration: const InputDecoration(
              hintText: 'Genre book',
              label: Text("Input Genre")
            ),
          ),
          const SizedBox(height: 20,),
          TextFormField(
            controller: deskripsicontroller,
            decoration: const InputDecoration(
              hintText: 'Description book',
              label: Text("Input Description")
            ),
          ),
        ]),
      )
    );
  }
}