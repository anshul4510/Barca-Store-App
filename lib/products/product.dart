class Product{
  final String id;
  final String name;
  final double price;
  final String image;
   bool isFav;
   bool inCart;
  final List<String> categories;
  final String type;
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.isFav,
    required this.categories,
    required this.type,
    required this.inCart,
});
}
