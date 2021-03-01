import 'package:flutter/material.dart';
import 'package:prueba_tienda_deportiva_flutter/utilies/product_model.dart';

class DetailProductScreen extends StatefulWidget {
  static String id = 'detail_screen';
  final ProductModel product;

  const DetailProductScreen({Key key, this.product}) : super(key: key);

  @override
  _DetailProductScreenState createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  bool isReservartion = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            child: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.pop(context);
            }),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Detalles del producto'),
            Spacer(),
            Builder(
              builder: (context) => GestureDetector(
                  child: isReservartion == false
                      ? Icon(Icons.star_border)
                      : Icon(Icons.star),
                  onTap: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: isReservartion == false
                          ? Row(
                              children: [
                                Icon(Icons.star),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Producto Reservado!!')
                              ],
                            )
                          : Text('Sacado de la lista de reserva'),
                    ));
                    setState(() {
                      isReservartion = !isReservartion;
                    });
                  }),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 30, bottom: 20),
                child: Text(
                  'Lista de productos',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(
              widget.product.image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.product.description,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.product.name,
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Cantidad en Stock ${widget.product.countStock}',
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            flex: 2,
          )
        ],
      ),
    );
  }
}
