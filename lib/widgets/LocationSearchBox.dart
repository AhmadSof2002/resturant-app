import 'package:flutter/material.dart';

class LocationSearchBox extends StatelessWidget {
  final void Function()? onPressed;
  const LocationSearchBox({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onTap: onPressed,
        decoration: InputDecoration(
            hintText: 'Enter your location',
            contentPadding: EdgeInsets.only(left: 20, bottom: 5, right: 5),
            suffixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }
}
