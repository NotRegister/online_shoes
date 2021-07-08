class ShoesBrand {
  String name;
  String imageURLs;

  ShoesBrand({required this.name, required this.imageURLs});
}

var shoesBrandList = [
  ShoesBrand(
    name: 'Nike',
    imageURLs: 'assets/images/logos/nike.png',
  ),
  ShoesBrand(
    name: 'Reebok',
    imageURLs: 'assets/images/logos/reebok.png',
  ),
  ShoesBrand(
    name: 'Adidas',
    imageURLs: 'assets/images/logos/adidas.png',
  ),
  ShoesBrand(
    name: 'Skecers',
    imageURLs: 'assets/images/logos/skechers.png',
  ),
];

class Shoes {
  String brandName;
  String name;
  String price;
  String imageURLs;
  String collection;

  Shoes({
    required this.brandName,
    required this.name,
    required this.price,
    required this.imageURLs,
    required this.collection,
  });
}

var shoesList = [
  Shoes(
      brandName: 'Nike',
      name: 'Blazer Low \'77',
      price: '1.4 Juta',
      collection: 'Men\'s Shoe',
      imageURLs:
          'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/7cf0d5a5-6841-42e1-a095-e53b0d0d179e/blazer-low-77-prm-shoe-pnHzBj.png'),
  Shoes(
      brandName: 'Nike',
      name: 'Waffle Trainer 2',
      price: '1.4 Juta',
      collection: 'Men\'s Shoe',
      imageURLs:
          'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ccbdc5da-324e-4b2a-8199-4cf4cd269e0a/waffle-trainer-2-shoe-VlSsZv.png'),
  Shoes(
      brandName: 'Nike',
      name: 'Mercurial Superfly 8 Elite CR7 FG',
      price: '3.9 Juta',
      collection: 'Firm-Ground Football',
      imageURLs:
          'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/bc0b7650-3f96-4ed4-9f28-53c9ae7399b4/mercurial-superfly-8-elite-cr7-fg-football-boot-Xg2wtF.png'),
  Shoes(
      brandName: 'Reebok',
      name: 'Classic Leather Legacy Grow Shoes',
      price: '\$ 80',
      collection: 'Classics',
      imageURLs:
          'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/21dfe34b96a24a9d90a0acec01076e1b_9366/Classic_Leather_Legacy_Grow_Shoes_White_S24179_03_standard.jpg'),
  Shoes(
      brandName: 'Reebok',
      name: 'Classic Leather Legacy Grow Shoes',
      price: '\$ 80',
      collection: 'Classics',
      imageURLs:
          'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/21dfe34b96a24a9d90a0acec01076e1b_9366/Classic_Leather_Legacy_Grow_Shoes_White_S24179_03_standard.jpg'),
];
