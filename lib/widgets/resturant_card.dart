import 'package:flutter/material.dart';
import 'package:resturant_app/models/resturant_model.dart';
import 'package:resturant_app/widgets/resturant_tags.dart';

class ResturantCard extends StatelessWidget {
  final Resturant resturant;
  const ResturantCard({Key? key, required this.resturant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: NetworkImage(resturant.ImageUrl),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  width: 60,
                  height: 30,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '${resturant.deliveryTime} min',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  resturant.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                //resturant tags
                SizedBox(
                  height: 5,
                ),
                ResturantTags(resturant: resturant),

                SizedBox(
                  height: 5,
                ),
                Text(
                    '${resturant.distance} km - \$${resturant.deliveryFee} delivery fee ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.black54)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
