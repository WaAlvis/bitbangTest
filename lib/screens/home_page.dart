import 'package:flutter/material.dart';

import 'detail_product_screen.dart';

class HomePage extends StatelessWidget {
  static String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tienda deportiva colombia'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailProductScreen(

                    );
                  },
                ),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Expanded(
                    child: Image.network(
                      'https://definicion.de/wp-content/uploads/2009/06/producto.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'product 1',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                          maxLines: 2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Descripcion del producto'),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          child: Text(
                            '\$ 2.323',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
