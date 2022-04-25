import 'package:flutter/material.dart';
import 'package:resturant_app/models/resturant_model.dart';
import 'package:resturant_app/widgets/resturant_tags.dart';

class ResturantInformation extends StatelessWidget {
  final Resturant resturant;
  const ResturantInformation({Key? key, required this.resturant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${resturant.name}',
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            ResturantTags(resturant: resturant),
            SizedBox(
              height: 5,
            ),
            Text(
              '${resturant.distance} km away - \$${resturant.deliveryFee} delivery fee',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
