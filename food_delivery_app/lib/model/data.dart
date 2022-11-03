class ProductInfo {
  String name;
  String image;
  String rating;
  String location;
  int price;
  int? totalPrice;
  double marzan;

  int quantity = 1;

  ProductInfo(this.name, this.image, this.rating, this.price, this.location,
      this.marzan);

  static List<ProductInfo> generatedProductList() {
    return [
      ProductInfo('Burger', 'images/b.jpg', '', 35, '800m', 0),
      ProductInfo('Pizza', 'images/p.jpg', '', 35, '400m', 0),
      ProductInfo('Sandwich', 'images/s.jpeg', '', 35, '1200m', 0),
      ProductInfo('Juice', 'images/j.jpg', '', 35, '800m', 0),
      ProductInfo('Burger', 'images/b.jpg', '', 35, '800m', 0),
      ProductInfo('Pizza', 'images/p.jpg', '', 35, '400m', 0),
      ProductInfo('Sandwich', 'images/s.jpeg', '', 35, '1200m', 0),
      ProductInfo('Juice', 'images/j.jpg', '', 35, '800m', 0),
      ProductInfo('Burger', 'images/b.jpg', '', 35, '800m', 0),
      ProductInfo('Pizza', 'images/p.jpg', '', 35, '400m', 0),
      ProductInfo('Sandwich', 'images/s.jpeg', '', 35, '1200m', 0),
      ProductInfo('Juice', 'images/j.jpg', '', 35, '800m', 0),
      ProductInfo('Burger', 'images/b.jpg', '', 35, '800m', 0),
      ProductInfo('Pizza', 'images/p.jpg', '', 35, '400m', 0),
      ProductInfo('Sandwich', 'images/s.jpeg', '', 35, '1200m', 0),
      ProductInfo('Juice', 'images/j.jpg', '', 35, '800m', 0),
    ];
  }
}
