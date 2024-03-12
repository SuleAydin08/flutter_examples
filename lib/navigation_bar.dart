import 'package:flutter/material.dart';
import 'package:flutter_examples/home_page.dart';
import 'package:flutter_examples/shopping.dart';

class NavigationBarApp extends StatefulWidget {
  const NavigationBarApp({super.key});

  @override
  State<NavigationBarApp> createState() => _NavigationBarAppState();
}

class _NavigationBarAppState extends State<NavigationBarApp> {
  int _currentIndex = 0;
  List<Widget> body = const [//burda bağlantı vereceğimiz sayfaları yazıyoruz ki oraya yönlendirsin
    HomePage(),
    ShopPage(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w900),showUnselectedLabels: true,
        backgroundColor:  const Color.fromARGB(255, 70, 5, 5),
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [//bu alt kısımdaki ikonları gösterir.
          BottomNavigationBarItem(
            label: 'Anasayfa',
            icon: Icon(Icons.home,color: Colors.white,),
          ),
          BottomNavigationBarItem(
            label: 'Kategoriler',
            icon: Icon(Icons.breakfast_dining,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
