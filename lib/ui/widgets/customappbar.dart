// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final Color textColor;

  const CustAppBar({
    super.key,
    this.backgroundColor = const Color(0xFFF7CB45), // default color
    this.textColor = const Color(0XFFFFFFFF),
  });

  @override
  Size get preferredSize => const Size.fromHeight(170);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      height: 170,
      width: double.infinity,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Blinkit in",
                        style: TextStyle(
                            fontFamily: "poppins bold",
                            fontSize: 12,
                            color: textColor),
                      ),
                      Text(
                        "16 minutes",
                        style: TextStyle(
                            fontFamily: "poppins bold",
                            fontSize: 20,
                            color: textColor),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/person.png",
                      height: 32,
                      color: textColor,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "HOME-",
                    style: TextStyle(
                        fontFamily: "poppins bold",
                        fontSize: 12,
                        color: textColor),
                  ),
                  Text(
                    " Sujal Dave, Ratanada, Jodhpur (Raj)",
                    style: TextStyle(
                        fontFamily: "poppins regular",
                        fontSize: 12,
                        color: textColor),
                  ),
                  const SizedBox(width: 2),
                  Image.asset(
                    "assets/icons/downarrow.png",
                    height: 12,
                    color: textColor,
                  )
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 37,
                width: 346,
                child: SearchBar(
                  elevation: WidgetStateProperty.all(0),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  hintText: "Search “ice-cream”",
                  hintStyle: WidgetStateProperty.all(
                    TextStyle(
                      fontFamily: "poppins regular",
                      fontSize: 12,
                    ),
                  ),
                  leading: Image.asset(
                    "assets/icons/search.png",
                    height: 16,
                  ),
                  trailing: [
                    Row(
                      children: [
                        Container(
                          width: 1,
                          height: 20,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 5),
                        Image.asset(
                          "assets/icons/voice.png",
                          height: 16,
                        ),
                        const SizedBox(width: 5),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
