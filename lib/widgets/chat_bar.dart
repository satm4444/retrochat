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
        //  border: Border.all(width: 0, color: Colors.black),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 2, color: Colors.black)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    imageurl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 70,
                width: 220,
                // color: Colors.redAccent.withOpacity(0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
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
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  height: 65,
                  //  width: 30,
                  // decoration: BoxDecoration(
                  //   color: outColor,
                  //   borderRadius: BorderRadius.only(
                  //     topRight: Radius.circular(8),
                  //     bottomRight: Radius.circular(8),
                  //   ),
                  // ),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: inColor,
                          borderRadius: BorderRadius.circular(100)),
                      height: 11,
                      width: 11,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
