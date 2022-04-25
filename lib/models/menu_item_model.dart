import 'package:equatable/equatable.dart';

class MenuItem extends Equatable {
  final int id;
  final int resturantId;
  final String name;
  final String category;
  final String description;
  final double price;

  MenuItem(
      {required this.id,
      required this.resturantId,
      required this.name,
      required this.category,
      required this.description,
      required this.price});
  // final String imageUrl;

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, resturantId, name, category, description, price];

  static List<MenuItem> MenuItems = [
    MenuItem(
        id: 1,
        resturantId: 1,
        name: 'Margherita',
        category: 'Pizza, Drinks',
        description: 'Tomatoes, mozzarella, basil',
        price: 5.99),
    MenuItem(
        id: 1,
        resturantId: 2,
        name: '4 Formaggi',
        category: 'Pizza, Drinks',
        description: 'Tomatoes, mozzarella, basil',
        price: 3.99),
    MenuItem(
        id: 1,
        resturantId: 3,
        name: 'Baviera',
        category: 'Pizza',
        description: 'Tomatoes, mozzarella, basil',
        price: 3.99),
    MenuItem(
        id: 1,
        resturantId: 4,
        name: 'Coco Cola',
        category: 'Pizza, Drinks',
        description: 'A fresh drink',
        price: 1.99),
  ];
}
