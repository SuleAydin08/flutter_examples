class ProductModel {
  String title;
  String description;
  String image;
  double price;
  String categories;
  double pound;
//Biz tüm değişkenlerimizi yazarız.
  ProductModel({
    required this.title,
    required this.image,
    required this.description,
    required this.categories,
    required this.price,
    required this.pound,
  });
}
