import 'package:blinkit_clone/ui/widgets/customappbar.dart';
import 'package:blinkit_clone/ui/widgets/minicards.dart';
import 'package:flutter/material.dart';

class Categorysection extends StatelessWidget {
  const Categorysection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustAppBar(
        textColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: Text("Grocery & Kitchen",
                  style: TextStyle(fontFamily: "poppins bold", fontSize: 14)),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    MiniCards(
                      data: "Vegetables &\n      Fruits",
                      url: "assets/images/veg/vegitables.png",
                    ),
                    MiniCards(
                      data: "Atta, Dal &\n    Rice",
                      url: "assets/images/veg/flour.png",
                    ),
                    MiniCards(
                      data: "Oil, Ghee &\n   Masala",
                      url: "assets/images/veg/groc.png",
                    ),
                    MiniCards(
                      data: "Dairy, Bread &\n       Milk",
                      url: "assets/images/veg/milkshakes.png",
                    ),
                    MiniCards(
                      data: "Vegetables &\n  Fruits",
                      url: "assets/images/veg/biscuits.png",
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    MiniCards(
                      data: "Dry Fruits &\n   Cereals",
                      url: "assets/images/veg/kellogs.png",
                    ),
                    MiniCards(
                      data: "Ice Creams &\n  much more",
                      url: "assets/images/veg/icecream.png",
                    ),
                    MiniCards(
                      data: "Kitchen &\nAppliances",
                      url: "assets/images/veg/mixer.png",
                    ),
                    MiniCards(
                      data: "Tea &\nCoffees",
                      url: "assets/images/veg/coffee.png",
                    ),
                    MiniCards(
                      data: "Noodles &\nPacket Food",
                      url: "assets/images/veg/maggie.png",
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 8),
              child: Text("Snacks & Drinks",
                  style: TextStyle(fontFamily: "poppins bold", fontSize: 14)),
            ),
            SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    MiniCards(
                      data: "Chips &\nNamkeens",
                      url: "assets/images/snacks/chips.png",
                    ),
                    MiniCards(
                      data: "Sweets &\nChocalates",
                      url: "assets/images/snacks/sweets.png",
                    ),
                    MiniCards(
                      data: "Drinks &\nJuices",
                      url: "assets/images/snacks/drinks.png",
                    ),
                    MiniCards(
                      data: "Sauces &\nSpreads",
                      url: "assets/images/snacks/sauce.png",
                    ),
                    MiniCards(
                      data: "Beauty &\nCosmetics",
                      url: "assets/images/snacks/cosmets.png",
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 8),
              child: Text("Household Essentials",
                  style: TextStyle(fontFamily: "poppins bold", fontSize: 14)),
            ),
            SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    MiniCards(
                      data: "Detergents",
                      url: "assets/images/snacks/surf.png",
                    ),
                    MiniCards(
                      data: "Soaps",
                      url: "assets/images/snacks/soap.png",
                    ),
                    MiniCards(
                      data: "Oils",
                      url: "assets/images/snacks/oil.png",
                    ),
                    MiniCards(
                      data: "Sofas",
                      url: "assets/images/snacks/sofa.png",
                    ),
                    MiniCards(
                      data: "Perfumes",
                      url: "assets/images/snacks/spray.png",
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
