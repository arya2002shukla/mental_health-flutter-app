// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class EmoticonFace extends StatelessWidget {

  final String emoticonFace;

  const EmoticonFace({
    Key? key,
    required this.emoticonFace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
       decoration: BoxDecoration(
          color: Color(0xFF00adb5),
          borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          emoticonFace,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
