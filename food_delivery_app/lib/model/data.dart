class ProductInfo {
  String name;
  String image;
  String rating;
  String location;
  String price;
  int? totalPrice;

  int quantity = 1;

  ProductInfo(this.name, this.image, this.rating, this.price, this.location);

  static List<ProductInfo> generatedProductList() {
    return [
      ProductInfo('Burger', 'images/b.jpg', '', '\$35', '800m'),
      ProductInfo('Pizza', 'images/p.jpg', '', '\$30', '400m'),
      ProductInfo('Sandwich', 'images/s.jpeg', '', '\$25', '1200m'),
      ProductInfo('Juice', 'images/j.jpg', '', '\$35', '800m'),
      ProductInfo('Burger', 'images/b.jpg', '', '\$35', '800m'),
      ProductInfo('Pizza', 'images/p.jpg', '', '\$30', '400m'),
      ProductInfo('Sandwich', 'images/s.jpeg', '', '\$25', '1200m'),
      ProductInfo('Juice', 'images/j.jpg', '', '\$35', '800m'),
      ProductInfo('Burger', 'images/b.jpg', '', '\$35', '800m'),
      ProductInfo('Pizza', 'images/p.jpg', '', '\$30', '400m'),
      ProductInfo('Sandwich', 'images/s.jpeg', '', '\$25', '1200m'),
      ProductInfo('Juice', 'images/j.jpg', '', '\$35', '800m'),
      ProductInfo('Burger', 'images/b.jpg', '', '\$35', '800m'),
      ProductInfo('Pizza', 'images/p.jpg', '', '\$30', '400m'),
      ProductInfo('Sandwich', 'images/s.jpeg', '', '\$25', '1200m'),
      ProductInfo('Juice', 'images/j.jpg', '', '\$35', '800m'),
    ];
  }
}
