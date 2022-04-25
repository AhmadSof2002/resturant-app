import 'package:flutter/material.dart';
import 'package:resturant_app/models/resturant_model.dart';

class ResturantTags extends StatelessWidget {
  const ResturantTags({
    Key? key,
    required this.resturant,
  }) : super(key: key);

  final Resturant resturant;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: resturant.tags
          .map((tag) => resturant.tags.indexOf(tag) == resturant.tags.length - 1
              ? Text(
                  tag,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.black54),
                )
              : Text(
                  '$tag,',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.black54),
                ))
          .toList(),
    );
  }
}
