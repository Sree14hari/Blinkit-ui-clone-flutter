import 'package:flutter/material.dart';

class CustomCardCart extends StatelessWidget {
  final String imagePath;
  final String iName;
  final String price;
  const CustomCardCart(
      {super.key,
      required this.imagePath,
      required this.iName,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    imagePath,
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
                      backgroundColor: WidgetStateProperty.all(Colors.white),
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
                            fontSize: 8, color: Colors.green), // Smaller font
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
            iName,
            style: TextStyle(fontFamily: "poppins regular", fontSize: 10),
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
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "₹ $price",
            style: TextStyle(
                fontFamily: "poppins bold", fontSize: 15, color: Colors.black),
          )
        ],
      ),
    );
  }
}
