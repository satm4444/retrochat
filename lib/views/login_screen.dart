import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:retrochat/views/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final AuthController authController = Get.find();
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          height: deviceSize.height,
          width: deviceSize.width,
          child: Image.asset(
            "assets/images/back.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: deviceSize.height,
          width: deviceSize.width,
          color: Colors.white.withOpacity(0.9),
        ),
        Container(
          height: deviceSize.height,
          width: deviceSize.width,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Re",
                    style: GoogleFonts.righteous(
                        fontSize: 38, color: Color(0xffe3424a)),
                  ),
                  Text(
                    "Chat",
                    style: GoogleFonts.righteous(
                      fontSize: 38,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Chat again and again !",
                style: GoogleFonts.lato(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 200,
                child: OutlinedButton(
                  onPressed: () {
                    //   authController.googleLogin();
                    Get.off(() => MainScreen());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 18,
                        backgroundImage: AssetImage("assets/images/gogle.png"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Login with Google",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      )
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
