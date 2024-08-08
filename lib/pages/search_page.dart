import 'package:flutter/material.dart';
import 'package:openbooks/pages/chapnovel_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<Map> filteredData = [];

  final List<Map> popData = [
       {
      "name":"Laskar Pelangi",
      "author": "Andrea Hirata",
      "genre": "Fiction",
      'rating': 4.5, 
      "backgroundimg": Colors.blueAccent.withOpacity(0.2),
      "image": "assets/image_book/Laskar_pelangi.jpg",  
    },
    {
      "name":"Seumpama Matahari",
      "author": "Arafat Nur",
      "genre": "Fantasy",
      'rating': 4.5, 
      "backgroundimg": Colors.blueAccent.withOpacity(0.2),
      "image":"assets/image_book/Seumpama_matahari.jpg",
    },
    {
      "name":"Jakarta_2040",
      "author": "Mashuri",
      "genre": "Science",
      'rating': 4.5, 
      "backgroundimg": Colors.blueAccent.withOpacity(0.2),
      "image":"assets/image_book/Jakarta_2040.jpg",
    },
    {
      "name":"Ngenest",
      "author": "Ernest Prakasa",
      "genre": "Fiction Science",
      'rating': 4.5,
      "backgroundimg": Colors.blueAccent.withOpacity(0.2),
      "image":"assets/image_book/Ngenest_sendiri.jpg",
    },
    {
      "name":"Edensor",
      "author": "Andrea Hirata",
      "genre": "Fiction",
      'rating': 4.5,
      "backgroundimg": Colors.blueAccent.withOpacity(0.2),
      "image":"assets/image_book/Edensor_3.jpg",
    },
  ];

  @override
  void initState() {
    super.initState();
    filteredData = List.from(popData);
  }

  void filterBooks(String query) {
    setState(() {
      filteredData = popData
          .where((book) =>
              book['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
            title: const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: 
                      Icon(
                        Icons.find_in_page,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Find Book's",
                      style: TextStyle(color: Colors.black),
                    ),
                ],
              ),
            ),
            backgroundColor: Colors.lightBlue[200],
            shadowColor: Colors.black,
            elevation: 8,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: filterBooks,
              decoration: const InputDecoration(
                labelText: 'Search Books',
                border: OutlineInputBorder(),
              ),
            ),
          ),
           Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,

              ),
              itemCount: filteredData.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Chapt()));
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            filteredData[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: double.infinity, // Gunakan lebar maksimum
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(filteredData[index]['name'], style: const TextStyle(fontWeight: FontWeight.w600)),
                                    Text(filteredData[index]['author'], style: const TextStyle(color: Colors.grey)),
                                    Text(filteredData[index]['genre'], style: const TextStyle(color: Colors.grey)),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  // Fungsi yang akan dijalankan ketika tombol bookmark ditekan.
                                },
                                icon: const Icon(Icons.bookmark_border),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}