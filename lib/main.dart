import 'package:flutter/material.dart';
import 'package:toko_cripto/pages/splash_pages.dart';

import 'list/list_data_cart.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'OpenSans'),
        title: 'Flutter Demo',
        home: const SafeArea(child: SplashPages()));
  }
}
