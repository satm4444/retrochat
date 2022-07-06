import 'package:flutter/material.dart';

import 'package:retrochat/views/login_screen.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RetChat',
        theme: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
              primary: Color.fromARGB(255, 20, 155, 24),
              secondary: Colors.white),
          errorColor: Colors.red,
        ),
        home: LoginScreen());
  }
}
