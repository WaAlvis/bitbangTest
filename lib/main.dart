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
        DetailProductScreen.id: (contex) => DetailProductScreen(),
        // TestPostPage.id: (context) => TestPostPage(), //Page for POST Example
        // TestGetPage.id: (context) => TestGetPage(), //Page for GET Example
        // LoadingScreen.id:(context)=>LoadingScreen(),
      },
    );
  }
}

