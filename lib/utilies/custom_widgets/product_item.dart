import 'package:flutter/material.dart';
import 'package:prueba_tienda_deportiva_flutter/screens/detail_product_screen.dart';
import 'package:prueba_tienda_deportiva_flutter/utilies/product_model.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;

  const ProductItem({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailProductScreen(
                product: product,
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
                product.image,
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
                    product.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(product.description),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    child: Text(
                      product.countStock.toString(),
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
    );
  }
}
