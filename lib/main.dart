import 'package:assignment_ui_test/pages/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',//initial the primary route
      getPages: [
        GetPage(name: '/', page: ()=>OnBoardcreen())
      ],
    );
  }
}


