import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/category_model.dart';

import 'package:flutter_examples/product_page.dart';
import 'package:flutter_examples/shopping.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CategoryModel> categoryList = [
    CategoryModel(
        image: "assets/images/tumtavuk.jpeg", text: 'Tavuk Eti Çeşitleri'),
    CategoryModel(
        image: "assets/images/tavuk.jpeg", text: 'Tavuk Eti Çeşitleri'),
    CategoryModel(
        image: "assets/images/tavuk3.jpeg", text: 'Tavuk Eti Çeşitleri'),
    CategoryModel(
        image: "assets/images/pirzolatavuk.jpeg", text: 'Tavuk Eti Çeşitleri'),
    CategoryModel(image: "assets/images/but.jpeg", text: 'Tavuk Eti Çeşitleri'),
    CategoryModel(
        image: "assets/images/kalca.jpeg", text: 'Tavuk Eti Çeşitleri'),
    CategoryModel(
        image: "assets/images/kanat.jpeg", text: 'Tavuk Eti Çeşitleri'),
    CategoryModel(
        image: "assets/images/kirmiziet.jpg", text: 'Kırmızı Et Çeşitleri'),
    CategoryModel(
        image: "assets/images/kirmiziet2.jpeg", text: 'Kırmızı Et Çeşitleri'),
    CategoryModel(
        image: "assets/images/kirmiziet3.jpeg", text: 'Kırmızı Et Çeşitleri'),
    CategoryModel(image: "assets/images/balik.jpg", text: 'Balık Çeşitleri'),
    CategoryModel(image: "assets/images/balik2.jpeg", text: 'Balık Çeşitleri'),
  ];

  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 224, 224),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 70, 5, 5),
        title: const Text(
          "KASABIM",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            //alışveriş listen
            icon: const Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ShopPage()),
              );
            },
          ),
          //Menu button
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              if (kDebugMode) {
                print("tıklandı");
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductPage()),
              );
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //Banner widget
              width: double.infinity,
              height: 275,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.black54),
              ),
              child: Image.network(
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 275,
                  "https://www.sorhocam.com/uploads/images/1292016-145108-60171.jpg"),
              // decoration: BoxDecoration(
              //   color: Colors.amber,
              //   border: Border.all(color: Colors.black54),
              //   image: const DecorationImage(
              //     fit: BoxFit.cover,
              //       image: NetworkImage(
              //           "https://www.sorhocam.com/uploads/images/1292016-145108-60171.jpg")),
              //   borderRadius: BorderRadius.circular(20.0),
              // ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "KATEGORİLER",
                style: TextStyle(
                    color: Color.fromARGB(255, 70, 5, 5),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SingleChildScrollView(
              //kategoriler satırı bu satırda kategorilerin resimleri getirirlir
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                      height: 12,
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                        "assets/images/tumtavuk.jpeg",
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                        "assets/images/but.jpeg",
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                        "assets/images/kalca.jpeg",
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                        "assets/images/pirzolatavuk.jpeg",
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                        "assets/images/tavuk3.jpeg",
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            const Center(
              child: Text(
                "ÜRÜN KATEGORİLERİ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 70, 5, 5),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 400,
                height: 250,
                color: Colors.white30,
                //Ürünler Listesi Widgetı
                child: ListView.builder(
                    itemCount:
                        categoryList.length, //listenin uzunluğunu veriyorsun
                    itemBuilder: (BuildContext context, int index) {
                      //listenin indexine erişip elemanları görebilmemiz için şart
                      //containerı sileriz radiusa değer verip resmin boyutunu büyültmek için
                      return Container(
                        margin:
                            const EdgeInsets.all(10.0), //dıştan verilen boşluk
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(categoryList[index].image),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 252, 224, 224),
                        ),
                        child: Center(
                          child: Text(
                            categoryList[index].text,
                            style: const TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 63, 3, 3),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    }),
              ),
            )
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Column(
            //       children: [
            //         SizedBox(
            //           width:40,height: 40,
            //         ),
            //         ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/images/tumtavuk.jpeg"),),
            //           tileColor: Color.fromARGB(255, 230, 176, 176),title: Text("Tavuk Eti",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35,),)
            //         ),
            //         ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/images/kirmiziet.jpg"),),
            //           tileColor: Color.fromARGB(255, 230, 176, 176),title: Text("Kırmızı Et",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35,),)
            //         ),
            //         ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/images/balik.jpg"),),
            //           tileColor: Color.fromARGB(255, 230, 176, 176),title: Text("Balık",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35,),),
            //         ),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
 // width: double.infinity,
              // height: 300, 
              // decoration: BoxDecoration(
              //   color: Colors.amber,
              //   border: Border.all(color: Colors.black54),
              //   image: const DecorationImage(
              //       image: NetworkImage(
              //           "https://www.sorhocam.com/uploads/images/1292016-145108-60171.jpg")),
              //   borderRadius: BorderRadius.circular(20.0),
              // ),


                 // //containerın gözükmesi için her zaman bir genişliği ve yüksekliği olmalıdır.
              // width: double.infinity,
              // height: 300,
              // color: Colors.amber,
              // child: Image.network(
              //     "https://www.sorhocam.com/uploads/images/1292016-145108-60171.jpg"),



                //decoration: BoxDecoration(
                        //image: const DecorationImage(image: AssetImage("assets/images/tumtavuk.jpeg"),fit: BoxFit.cover),
                        //borderRadius: BorderRadius.circular(15.0),

                        //  color: const Color.fromARGB(255, 227, 185, 185),
                        // padding:
                        //     const EdgeInsets.all(4.0), //içten verilen boşluk
                       //margini buraya ekle
                        // child: Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   children: [
                        //     const SizedBox(
                        //       width: 10,
                        //     ), //
                        //     CircleAvatar(
                        //       radius: 35.0,
                        //       backgroundImage: AssetImage(
                        //         categoryList[index].image,
                        //       ),
                        //       backgroundColor: Colors.transparent,
                        //     ),

                        //     // Image.asset(

                        //     //     productList[index].image,
                        //     //   width: 95,
                        //     //   height: 95,
                        //     //   fit: BoxFit.cover
                        //     // ), //Boxfit.cover resimleri eşitlemek için kullanılır.
                        //     const SizedBox(
                        //       width: 15,
                        //     ),
                        //     Text(
                        //       style: const TextStyle(
                        //         fontSize: 20,
                        //         fontWeight: FontWeight.bold,
                        //         color: Color.fromARGB(255, 70, 5, 5),
                        //       ),
                        //       categoryList[index].text,
                        //     ),
                        //   ],
                        // ),