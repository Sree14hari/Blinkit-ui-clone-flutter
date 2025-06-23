import 'dart:math';

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
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 8, 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        height: 108,
                        width: 96,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(10),
                          child: Image.asset(
                            "assets/images/milk.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 66, top: 96),
                        child: SizedBox(
                          height: 18,
                          width: 30,
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all(EdgeInsets.zero),
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              side: WidgetStateProperty.all(
                                BorderSide(color: Colors.green, width: 2),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Add",
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.green), // Smaller font
                                overflow: TextOverflow.clip,
                                softWrap: false,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Amul Taaza Toned\nFresh Milk",
                    style:
                        TextStyle(fontFamily: "poppins regular", fontSize: 10),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/stopwatch.png",
                        height: 13,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "16 MINS",
                        style: TextStyle(
                            fontFamily: "poppinst regular",
                            fontSize: 10,
                            color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
