import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 46, 46, 46),
          secondary: Colors.black54,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeView(),
    );
  }
}
