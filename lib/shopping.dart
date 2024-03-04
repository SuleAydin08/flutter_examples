import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 224, 224),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 70, 5, 5),
        title: const Text(
          "Ürünler",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: 
      
      GridView.builder(
        scrollDirection: Axis.vertical,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/kirmiziet.jpg",
                  height: 100,
                ),
                Text("data")
              ],
            ), //bazı resimlerde boyut hatası veriyor neden sor.
          );
        },
        // children: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       margin: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
        //       child: Row(
        //         children: [
        //           Container(
        //             child: FittedBox(
        //                 child: Image.asset(
        //                     "assets/images/kanat.jpeg")), //bazı resimlerde boyut hatası veriyor neden sor.
        //           ),
        //         ],
        //       ),
        //       height: 50,
        //       width: 50,
        //       color: const Color.fromARGB(255, 227, 185, 185),
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       child: Row(
        //         children: [Image.asset("assets/images/pirzolatavuk.jpeg")],
        //       ),
        //       height: 50,
        //       width: 50,
        //       color: const Color.fromARGB(255, 227, 185, 185),
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       child: Row(
        //         children: [Image.asset("assets/images/kanat.jpeg")],
        //       ),
        //       height: 50,
        //       width: 50,
        //       color: const Color.fromARGB(255, 227, 185, 185),
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       child: Row(
        //         children: [Image.asset("assets/images/pirzolatavuk.jpeg")],
        //       ),
        //       height: 50,
        //       width: 50,
        //       color: const Color.fromARGB(255, 227, 185, 185),
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       child: Row(
        //         children: [Image.asset("assets/images/kanat.jpeg")],
        //       ),
        //       height: 50,
        //       width: 50,
        //       color: const Color.fromARGB(255, 227, 185, 185),
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       child: Row(
        //         children: [Image.asset("assets/images/pirzolatavuk.jpeg")],
        //       ),
        //       height: 50,
        //       width: 50,
        //       color: const Color.fromARGB(255, 227, 185, 185),
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       child: Row(
        //         children: [Image.asset("assets/images/kanat.jpeg")],
        //       ),
        //       height: 50,
        //       width: 50,
        //       color: const Color.fromARGB(255, 227, 185, 185),
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       child: Row(
        //         children: [Image.asset("assets/images/pirzolatavuk.jpeg")],
        //       ),
        //       height: 50,
        //       width: 50,
        //       color: const Color.fromARGB(255, 227, 185, 185),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
