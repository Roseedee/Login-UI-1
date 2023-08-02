// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyInput extends StatefulWidget {
  String title;
  String hintText;
  IconData prefixIcon;
  bool obscureText = false;

  MyInput(
      {Key? key,
      required this.title,
      required this.hintText,
      required this.prefixIcon,
      this.obscureText = false})
      : super(key: key);

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: const Color(0xFF62AFEE),
            boxShadow: [
              BoxShadow(
                offset: const Offset(5, 3),
                blurRadius: 5,
                color: Colors.black.withOpacity(0.05),
              )
            ]
          ),
          child: TextFormField(
            obscureText: widget.obscureText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 16,
              ),
              prefixIcon: Icon(
                widget.prefixIcon,
                color: Colors.white,
                size: 20,
              )
            ),
          ),
        )
      ],
    );
  }
}
