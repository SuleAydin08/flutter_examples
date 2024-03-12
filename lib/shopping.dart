import 'package:flutter/material.dart';

import 'package:flutter_examples/product_modal.dart';
import 'package:flutter_examples/shopping_detail.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final List<ProductModel> productList = [
    ProductModel(
      title: 'Karışık Balık',
      image: 'assets/images/balik.jpg',
      description: 'Levrek, Hamsi, Karides',
      categories: 'Balık Çeşitleri',
      pound: 2.1,
      price: 28.3,
    ), //BURDAKİ yazma sebebimiz backendden veri gelmemesidir
    ProductModel(
      title: 'Ton Balığı',
      image: 'assets/images/balik2.jpeg',
      description: '4 parça ton balığı',
      categories: 'Balık Çeşitleri',
      pound: 6.5,
      price: 30.5,
    ),
    ProductModel(
      title: 'Tavuk But',
      image: 'assets/images/but.jpeg',
      description: '9 adet tavuk but ',
      categories: 'Tavuk Eti Çeşitleri',
      pound: 3.9,
      price: 25.3,
    ),
    ProductModel(
      title: 'Tavuk Kalça',
      image: 'assets/images/kalca.jpeg',
      description: '4 adet tavuk kalça',
      categories: 'Tavuk Eti Çeşitleri',
      pound: 4.2,
      price: 25.8,
    ),
    ProductModel(
      title: 'Tavuk Kanat',
      image: 'assets/images/kanat.jpeg',
      description: '25 adet tavuk kanat',
      categories: 'Tavuk Eti Çeşitleri',
      pound: 3.2,
      price: 23.4,
    ),
    ProductModel(
      title: 'Tavuk Pirzola',
      image: 'assets/images/pirzolatavuk.jpeg',
      description: '10 adet tavuk pirzola',
      categories: 'Tavuk Eti Çeşitleri',
      pound: 4.5,
      price: 29.1,
    ),
    ProductModel(
      title: 'Karışık Tavuk',
      image: 'assets/images/tavuk.jpeg',
      description: 'Göğüs, But, Kalça ,',
      categories: 'Tavuk Eti Çeşitleri',
      pound: 4.9,
      price: 32,
    ),
    ProductModel(
      title: 'Tavuk Izgara',
      image: 'assets/images/tavuk3.jpeg',
      description: '12 adet tavuk ızgara',
      categories: 'Tavuk Eti Çeşitleri',
      pound: 4.3,
      price: 29.7,
    ),
    ProductModel(
      title: 'Tüm Tavuk',
      image: 'assets/images/tumtavuk.jpeg',
      description: '1 adet tüm tavuk',
      categories: 'Tavuk Eti Çeşitleri',
      pound: 5.5,
      price: 33.4,
    ),
    ProductModel(
      title: 'Karışık Kırmızı Et',
      image: 'assets/images/kirmiziet.jpg',
      description: 'Kaburga , Pirzola , İncik',
      categories: 'Kırmızı Et Çeşitleri',
      pound: 4.8,
      price: 37.3,
    ),
    ProductModel(
      title: 'Dana Bonfile',
      image: 'assets/images/kirmiziet2.jpeg',
      description: '2 adet dana bonfile',
      categories: 'Kırmızı Et Çeşitleri',
      pound: 3.1,
      price: 31.5,
    ),
    ProductModel(
      title: 'Kuzu Kaburga',
      image: 'assets/images/kirmiziet3.jpeg',
      description: '8 adet kuzu kavurma',
      categories: 'Kırmızı Et Çeşitleri',
      pound: 32,
      price: 36.8,
    ),
  ];

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
      body: ListView.builder(
        itemCount: productList.length, //buraya listenin uzunluğu girilir
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            //Tıklama özeelliği olmayan widgetlarda tıklama özelliğinini gesturedetector ve Inkwel verir.
            //tıklanma yapabilmek için oluştururuz ama
            onTap: () {
              //bunun için ayrı sayfada widget oluşturmak gerekir
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShoppingDetail(
                    product: productList[index],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 227, 185, 185),
              ),
              height: 150,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      productList[index].image,
                      fit: BoxFit.cover,
                      width: 150,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productList[index].title,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 70, 5, 5),
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          productList[index].categories,
                          style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 70, 5, 5),
                          ),
                        ),
                        Text(
                          productList[index].description,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          productList[index].pound.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          productList[index].price.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //index%2==0 ? //Burda ikiye tam bölünenleri listele demektir.
              //  Colors.amber:Colors.red, child: Text(productList[index].title));
            ),
          );
        },
      ),
    );
  }
}
