// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_examples/product_modal.dart';

class ShoppingDetail extends StatefulWidget {
  ShoppingDetail({super.key, required this.product});
  ProductModel product;
//String title;  => Önce değişkenin tipi sonra ne isim vermek istiyorsan onu gir
//Burada ProductModal bizim değişkenimizin tipi product ise değişkenimizin ismi
  @override
  State<ShoppingDetail> createState() => _ShoppingDetailState();
}

class _ShoppingDetailState extends State<ShoppingDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bağlantı sayfasında arka planın rengini container ile sarmak yerine scaffoldda background verilebilir
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 500,
                decoration: BoxDecoration(
                  border: Border.all(color:Color.fromARGB(255, 70, 5, 5),width:2,),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,//en çok kullanılan resmi sayfaya göre ayarlar.
                  image: AssetImage(
                widget.product.image,
              )),
            )),
            Text(
              widget.product.title,
              style: const TextStyle(
                  color: Color.fromARGB(255, 70, 5, 5),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              widget.product.categories,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w600),
            ),
            Text(
              widget.product.description,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w600),
            ),
            Text(
              widget.product.pound.toString(),
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w600),
            ),
            Text(
              widget.product.price.toString(),
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
