import 'package:equatable/equatable.dart';

class Promo extends Equatable {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  Promo(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [id, title, description, imageUrl];

  static List<Promo> promos = [
    Promo(
        id: 1,
        title: 'FREE Delivery on Your First 3 Orders',
        description:
            'Place an order of \$10 or more and the delivery fee is on us',
        imageUrl:
            'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
    Promo(
        id: 2,
        title: '20% off on Selected Resturants',
        description: 'Get a discount at more than 200+ resturants',
        imageUrl:
            'https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  ];
}
