import 'package:flutter/material.dart';
import 'package:openbooks/admpage/editor_chapter.dart';

class Chapter extends StatefulWidget {
  const Chapter({Key? key}) : super(key: key);

  @override
  State<Chapter> createState() => _ChapterState();
}

class _ChapterState extends State<Chapter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Chapter",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: 
            ListTile(
              onTap: () {
               
              },
              title: const Text("Chapter1"),
              subtitle: const Text("Deskripsi1"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit), 
                    onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const EditChapter()));
                    },
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.delete), 
                    onPressed: () {
                      
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const EditChapter()));
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,),
      ),
    );
  }
}