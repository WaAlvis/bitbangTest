class ProductModel {
  final String name;
  final String description;
  final String image;
  final int countStock;
  final bool booked;

  ProductModel(
      {this.countStock,
      this.image,
      this.name,
      this.description,
      this.booked = false});


}

