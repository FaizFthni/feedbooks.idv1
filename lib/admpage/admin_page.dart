import 'package:flutter/material.dart';
import 'package:openbooks/admpage/chapter_page.dart';
import 'package:openbooks/admpage/editor_page.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Inventory Book",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Card(
              child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Chapter()));
              },
              title: const Text("Book1"),
              subtitle: const Text("Deskripsi1"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit), 
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const EditorPages()));
                    },
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.delete), 
                    onPressed: () {
                      // Tindakan yang akan dijalankan ketika tombol Hapus ditekan
                    },
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => const EditorPages()));
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,),
        ),

    );
  }
}
