import 'package:flutter/material.dart';

import 'screens/detail_product_screen.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        DetailProductScreen.id: (context) => DetailProductScreen(),

      },
    );
  }
}

