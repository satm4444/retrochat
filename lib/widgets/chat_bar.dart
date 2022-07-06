import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBar extends StatelessWidget {
  final Color color;
  final String name;
  final String msg;
  final String imageurl;
  final Color outColor;
  final Color inColor;
  const ChatBar({
    required this.color,
    required this.name,
    required this.msg,
    required this.inColor,
    required this.outColor,
    required this.imageurl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //  color: Colors.green.withOpacity(0.5),
          border: Border.all(width: 2, color: Colors.black)),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
              color: color,
            ),
          ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black)),
            child: Image.network(
              imageurl,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 70,
            width: 200,
            // color: Colors.redAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  name,
                  style: GoogleFonts.lato(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  msg,
                  style: GoogleFonts.comfortaa(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: outColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            child: Center(
              child: Container(
                height: 10,
                width: 10,
                color: inColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
