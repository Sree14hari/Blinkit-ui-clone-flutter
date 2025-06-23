// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MiniCards extends StatelessWidget {
  final String data;
  final String url;
  const MiniCards({
    super.key,
    required this.data,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 78,
          width: 71,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0XFFD9EBEB)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              url,
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          data,
          style: TextStyle(fontFamily: "Poppins regular", fontSize: 10),
        )
      ],
    );
  }
}
