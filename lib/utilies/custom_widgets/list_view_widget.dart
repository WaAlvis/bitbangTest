import 'package:flutter/material.dart';
import 'package:prueba_tienda_deportiva_flutter/screens/detail_product_screen.dart';
import 'package:prueba_tienda_deportiva_flutter/utilies/ProductDataSource.dart';
import 'package:prueba_tienda_deportiva_flutter/utilies/custom_widgets/product_item.dart';
import 'package:prueba_tienda_deportiva_flutter/utilies/product_model.dart';

class ListViewWidgetCustom extends StatefulWidget {
  const ListViewWidgetCustom({
    Key key,
  }) : super(key: key);

  @override
  _ListViewWidgetCustomState createState() => _ListViewWidgetCustomState();
}

class _ListViewWidgetCustomState extends State<ListViewWidgetCustom> {
  List<ProductModel> products = ProductDataSource.productList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return ProductItem(product: products[index]);
      },
    );
  }
}
