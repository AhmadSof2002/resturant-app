import 'package:equatable/equatable.dart';
import 'package:resturant_app/models/menu_item_model.dart';

class Resturant extends Equatable {
  final int id;
  final String ImageUrl;
  final String name;
  final List<String> tags;
  final List<MenuItem> menuItems;
  final int deliveryTime;
  final double deliveryFee;
  final double distance;

  Resturant(
      {required this.id,
      required this.menuItems,
      required this.ImageUrl,
      required this.name,
      required this.tags,
      required this.deliveryTime,
      required this.deliveryFee,
      required this.distance});

  @override
  List<Object?> get props => [
        id,
        ImageUrl,
        name,
        tags,
        menuItems,
        deliveryTime,
        deliveryFee,
        distance
      ];

  static List<Resturant> resturants = [
    Resturant(
        id: 1,
        ImageUrl:
            'https://images.unsplash.com/photo-1484659619207-9165d119dafe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        name: 'The Vanilla Flower',
        tags: MenuItem.MenuItems.where((menuItem) => menuItem.resturantId == 1)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        deliveryTime: 30,
        deliveryFee: 3.99,
        menuItems:
            MenuItem.MenuItems.where((menuItem) => menuItem.resturantId == 1)
                .toList(),
        distance: 0.1),
    Resturant(
        id: 2,
        ImageUrl:
            'https://img.freepik.com/free-photo/cozy-restaurant-with-people-waiter_175935-230.jpg?w=900',
        name: 'The Bitter Morning',
        tags: MenuItem.MenuItems.where((menuItem) => menuItem.resturantId == 2)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        deliveryTime: 25,
        deliveryFee: 1.99,
        menuItems:
            MenuItem.MenuItems.where((menuItem) => menuItem.resturantId == 2)
                .toList(),
        distance: 0.1),
    Resturant(
        id: 3,
        ImageUrl:
            'https://img.freepik.com/free-photo/restaurant-hall-with-lots-table_140725-6309.jpg?w=900',
        name: 'The Gallery Vaults',
        tags: MenuItem.MenuItems.where((menuItem) => menuItem.resturantId == 3)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        deliveryTime: 25,
        deliveryFee: 2.99,
        menuItems:
            MenuItem.MenuItems.where((menuItem) => menuItem.resturantId == 3)
                .toList(),
        distance: 0.1),
    Resturant(
        id: 4,
        ImageUrl:
            'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        name: 'Fluorescence',
        tags: MenuItem.MenuItems.where((menuItem) => menuItem.resturantId == 4)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        deliveryTime: 20,
        deliveryFee: 1.99,
        menuItems:
            MenuItem.MenuItems.where((menuItem) => menuItem.resturantId == 4)
                .toList(),
        distance: 0.1),
  ];
}
