import 'package:blinkit_clone/ui/screens/category/categorysection.dart';
import 'package:blinkit_clone/ui/screens/homescreen/homescreen.dart';
import 'package:blinkit_clone/ui/screens/printer%20section/printerpage.dart';
import 'package:blinkit_clone/ui/screens/shopingscreen/shoping_screen.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int currentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    ShopingScreen(),
    Categorysection(),
    Printerpage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: true,
        selectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/home.png",
                width: 24,
                height: 24,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/shop.png",
                width: 24,
                height: 24,
              ),
              label: "Shop"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/category.png",
                width: 24,
                height: 24,
              ),
              label: "Category"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/printer.png",
                width: 24,
                height: 24,
              ),
              label: "Printer")
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
