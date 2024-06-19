

import 'package:homework_lesson_5/screens/ecommerce/model/product.dart';

import 'category.dart';

class AppData {
  static List<Product> productList = [
    Product(
        id: 1,
        name: 'Nike Air Max 200',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'assets/images/shoes.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'Nike Air Max 97',
        price: 220.00,
        isliked: false,
        image: 'assets/images/shoes.png',
        category: "Trending Now"),
  ];
  static List<Product> cartList = [
    Product(
        id: 1,
        name: 'Nike Air Max 200',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'assets/images/apple.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'Nike Air Max 97',
        price: 190.00,
        isliked: false,
        image: 'assets/images/apple.png',
        category: "Trending Now"),
    Product(
        id: 1,
        name: 'Nike Air Max 92607',
        price: 220.00,
        isliked: false,
        image: 'assets/images/apple.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'Nike Air Max 200',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'assets/images/apple.png',
        category: "Trending Now"),
    // Product(
    //     id:1,
    //     name: 'Nike Air Max 97',
    //     price: 190.00,
    //     isliked: false,
    //     image: 'assets/small_tilt_shoe_2.png',
    //     category: "Trending Now"),
  ];
  static List<Category> categoryList = [
    Category(
        id: 1,
        name: "Sneakers",
        image: 'assets/images/apple.png',
        isSelected: true),
    Category(id: 2, name: "Jacket", image: 'assets/images/shoes.png'),
    Category(id: 3, name: "Watch", image: 'assets/images/watch.png'),
    Category(id: 4, name: "Watch", image: 'assets/images/watch.png'),
  ];
  static List<String> showThumbnailList = [
    'assets/images/shoes.png',
    'assets/images/watch.png',
    'assets/images/shoes.png',
    'assets/images/watch.png',
  ];
  static String description =
      "Clean lines, versatile and timeless—the people shoe returns with the Nike Air Max 90. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven. The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details. Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.";
}
