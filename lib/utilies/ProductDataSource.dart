import 'product_model.dart';

class ProductDataSource {
  static List<ProductModel> productList = List.generate(
      10,
      (index) => ProductModel(
          image:
              'https://definicion.de/wp-content/uploads/2009/06/producto.jpg',
          name: 'Producto $index',
          description: 'Una corta descripcion $index',
          countStock: index));

  void addNewProduct(product) {
    productList.add(product);
  }
}
