import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 224, 224),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 70, 5, 5),
        centerTitle: true,
        title: const Text(
          "Kategoriler",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
         iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: const Kategoriler(),
    );
  }
}

class Kategoriler extends StatelessWidget {
  const Kategoriler({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          //Tavuk Eti Container
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
            ),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                // BorderRadius.circular(10)
                color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/tavuk.jpeg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              width: 400,
              height: 120,
              child: const Center(
                child: Text(
                  "TAVUK ETİ",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          //Kırmızı ET Container
          Container(
            padding: const EdgeInsets.all(10.0),
            width: 400,
            height: 120,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(31, 10, 8, 8), width: 2),
                color: const Color.fromARGB(255, 227, 185, 185),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrCZDmwLu2yOl7BlzX4QBLfc5NCQrVFUoBOg&usqp=CAU',
                  height: 150,
                  width: 150,
                ),
                const SizedBox(
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Kırmızı Et'),
                      Text('sajdhaudfdfdfdfdfdfddfdfdfdfdfhd'),
                    ],
                  ),
                ),
                const Column(
                  children: [
                    Icon(Icons.add),
                    Icon(Icons.remove),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(31, 0, 0, 0), width: 2),
              color: const Color.fromARGB(255, 40, 138, 28),
              borderRadius: BorderRadius.circular(15.0),
            ),
            width: 400,
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BALIK ETİ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Levrek",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Image.asset("assets/images/balik.jpg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
