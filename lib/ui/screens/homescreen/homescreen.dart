import 'package:blinkit_clone/ui/widgets/Customcard.dart';
import 'package:blinkit_clone/ui/widgets/HomeScreenCards.dart';
import 'package:blinkit_clone/ui/widgets/customappbar.dart';
import 'package:blinkit_clone/ui/widgets/minicards.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustAppBar(
        textColor: Colors.white,
        backgroundColor: Color(0XFFEC0505),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 1,
            ),
            Container(
              width: double.infinity,
              height: 196,
              color: Color(0XFFEC0505),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 1, 16, 0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                "assets/images/cracker.png",
                                height: 57.803466796875,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(18, 0, 0, 5),
                                child: Image.asset(
                                  "assets/images/cracker2.png",
                                  height: 57.803466796875,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Mega Diwali Sale",
                            style: TextStyle(
                                fontFamily: "PT Seriff Bold",
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Stack(
                            children: [
                              Image.asset(
                                "assets/images/cracker.png",
                                height: 57.803466796875,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                                child: Image.asset(
                                  "assets/images/cracker2.png",
                                  height: 57.803466796875,
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  SingleChildScrollView(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 10,
                        children: [
                          HomeCard(
                            imageUrl: "assets/images/homescreen/diya.png",
                            inputFields: 'Lights, Diyas\n  & Candles',
                          ),
                          HomeCard(
                            imageUrl: "assets/images/homescreen/choco.png",
                            inputFields: 'Diwali\n  Gifts',
                          ),
                          HomeCard(
                            imageUrl:
                                "assets/images/homescreen/electronics.png",
                            inputFields: 'Appliances &\n     Gadgets',
                          ),
                          HomeCard(
                            imageUrl: "assets/images/homescreen/sofa.png",
                            inputFields: 'Home &\n    Living',
                          ),
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  CustomCardCart(
                    iName: "Golden Glass\nWooden Lid Candle",
                    imagePath: "assets/images/homescreen/candle.png",
                    price: '79',
                  ),
                  CustomCardCart(
                    iName: "Royal Gulab\n Jamun By Bikano",
                    imagePath: "assets/images/homescreen/sweets.png",
                    price: '79',
                  ),
                  CustomCardCart(
                    iName: "Bikaji Bhujia",
                    imagePath: "assets/images/homescreen/namkeen.png",
                    price: '79',
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 8),
              child: Text(
                "Grocery & Kitchen",
                style: TextStyle(fontFamily: "poppins bold", fontSize: 14),
              ),
            ),
            SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
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
                ))
          ],
        ),
      ),
    );
  }
}
