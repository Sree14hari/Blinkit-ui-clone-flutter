// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: file_names
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String imageUrl;
  final String inputFields;
  const HomeCard({
    super.key,
    required this.imageUrl,
    required this.inputFields,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0XFFEAD3D3),
      ),
      height: 108,
      width: 86,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            inputFields,
            style: TextStyle(fontFamily: "Poppins bold", fontSize: 10),
          ),
          SizedBox(
            height: 74,
            width: 86,
            child: Image.asset(
              imageUrl,
              height: 74,
              width: 86,
            ),
          )
        ],
      ),
    );
  }
}
