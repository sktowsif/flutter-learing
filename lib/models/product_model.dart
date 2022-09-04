class Product {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;

  Product(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imageUrl});
}

final products = [
  Product(
      id: 1,
      name: 'iPhone 12 Pro',
      desc: 'Apple iPhone 12 generation',
      price: 999,
      color: '#33505a',
      imageUrl:
          'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-family-select-2021?wid=940&hei=1112&fmt=jpeg&qlt=90&.v=1617135051000')
];
