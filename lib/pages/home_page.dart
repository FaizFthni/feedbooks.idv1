import 'package:flutter/material.dart';
import 'package:openbooks/pages/chapnovel_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   List popData = [
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
           ListTile(
            title: const Text('Create Your Book (Dev)'),
            onTap: () {
              showDialog(
                  context: context, 
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: const Text('Close'),
                      ),
                    ],
                    title: const Text('Feedbooks.id'),
                    contentPadding: const EdgeInsets.all(20.0),
                    content: const Text('We apologize that this feature cannot be used yet.'),
                    
                  ),
                );
            },
          ),
          ]
        ),
      ),
      appBar: AppBar(
        title: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: 
                  Icon(
                    Icons.explore_rounded,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "Explore Discover Books",
                  style: TextStyle(color: Colors.black),
                ),
            ],
          ),
        ),
        backgroundColor: Colors.lightBlue[200],
        shadowColor: Colors.black,
        elevation: 8,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu, color: Colors.black),
            );
          },
        ),
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              //SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Recently Read",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700,fontSize: 20),),
                  TextButton(
                    onPressed: (){}, 
                    child: const Text("Show all",style: TextStyle(color: Colors.grey,fontSize: 16),
                    ),)
                ],
              ),
              const SizedBox(height: 10),
       
              Container(
                width: MediaQuery.of(context).size.width,
                height: 260,
                child: ListView.builder(
                  itemCount: popData.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder:  (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [

                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Chapt()));
                          },
                          child: 

                          Container(
                            width: 190,
                            height: 190,
                            decoration: BoxDecoration(
                              color: popData[index]['backgroundimg'],
                              borderRadius: BorderRadius.circular(10) 
                            ),
                            
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.network("${popData[index]['image']}"),
                            ) 
                          ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 180,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${popData[index]['name']}",style: const TextStyle(fontWeight: FontWeight.w600),),
                                    Text("${popData[index]['author']}",style: const TextStyle(color: Colors.grey),),
                                    Text("${popData[index]['genre']}",style: const TextStyle(color: Colors.grey),),
                                  ],
                                ),

                              IconButton(
                                onPressed: (){}, 
                                icon: const Icon(Icons.bookmark_border))
                            ]
                          ),
                          ),

                      ],
                  ),
                  );
                }),
              ),

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Just Added",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700,fontSize: 20),),
                  TextButton(
                    onPressed: (){}, 
                    child: const Text("Show all",style: TextStyle(color: Colors.grey,fontSize: 16),
                    ),)
                ],

              ),
              const SizedBox(height: 10),
              
              Container(
                width: MediaQuery.of(context).size.width,
                height: 420,
                child: ListView.builder(
                  itemCount: popData.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder:  (BuildContext context, int index) {
                  return Container(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Chapt()));
                          },
                          child: 
                          Container(
                            width: 120,
                            height: 130,
                            margin: const EdgeInsets.only(left: 10, right: 10,bottom: 5),
                            decoration: BoxDecoration(
                              color: popData[index]['backgroundimg'],
                              borderRadius: BorderRadius.circular(10) 
                            ),
                            
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.network("${popData[index]['image']}"),
                            ),
                          ),),
                        
                        Container(
                          //width: MediaQuery.of(context).size.width / 2,
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${popData[index]['name']}",style: const TextStyle(fontWeight: FontWeight.w600),),
                                  Text("${popData[index]['author']}",style: const TextStyle(color: Colors.grey),),
                                  Text("${popData[index]['genre']}",style: const TextStyle(color: Colors.grey),),
                                  Row( 
                                    children: [
                                      IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark_border),
                                      ),
                                      const Row(
                                        children: [Icon(Icons.star_border_rounded, color: Colors.black,),
                                          Text(
                                            "Not Rated"
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ]
                          ),
                          
                        ),
                      ],
                  ),);
                }),
              ),
            ] 
        ),
      ),
    ),
    );
  }
}