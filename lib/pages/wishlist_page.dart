import 'package:flutter/material.dart';
import 'package:openbooks/pages/chapnovel_page.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
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
      "name":"Ngenest",
      "author": "Ernest Prakasa",
      "genre": "Fiction Science",
      'rating': 4.5,
      "backgroundimg": Colors.blueAccent.withOpacity(0.2),
      "image":"assets/image_book/Ngenest_sendiri.jpg",
    },
  ];

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
                        Icons.favorite_outline_rounded,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "My Favorite",
                      style: TextStyle(color: Colors.black),
                    ),
                ],
              ),
            ),
            backgroundColor: Colors.lightBlue[200],
            shadowColor: Colors.black,
            elevation: 8,
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              //SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Your Wishlist",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700,fontSize: 20),),
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
                                      IconButton(onPressed: () {
                                        
                                      }, icon: const Icon(Icons.bookmark_added_sharp),
                                      ),
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