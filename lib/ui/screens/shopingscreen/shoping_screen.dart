import 'package:blinkit_clone/ui/widgets/customappbar.dart';
import 'package:flutter/material.dart';

class ShopingScreen extends StatelessWidget {
  const ShopingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Image.asset(
                  "assets/images/cart.png",
                  height: 140,
                  width: 140,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Reordering will be easy",
                style: TextStyle(fontFamily: "poppins bold", fontSize: 16),
              ),
            ),
            Center(
              child: Text(
                "Items you order will show up here so you can buy\n                           them again easily.",
                style: TextStyle(
                    fontFamily: "poppins regular",
                    fontSize: 10,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Bestsellers",
                style: TextStyle(
                  fontFamily: "poppins bold",
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ));
  }
}
