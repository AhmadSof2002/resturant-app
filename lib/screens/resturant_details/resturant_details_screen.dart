import 'package:flutter/material.dart';
import 'package:resturant_app/models/resturant_model.dart';
import 'package:resturant_app/widgets/resturant_info.dart';

class ResturantDetailsScreen extends StatelessWidget {
  const ResturantDetailsScreen({Key? key}) : super(key: key);

  static const String routeName = '/resturant-details';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => ResturantDetailsScreen(),
        settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    Resturant resturant = Resturant.resturants[0];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Basket'),
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(),
                    padding: const EdgeInsets.symmetric(horizontal: 50)),
              )
            ],
          )),
        ),
        extendBodyBehindAppBar: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 50)),
                  image: DecorationImage(
                      image: NetworkImage(resturant.ImageUrl),
                      fit: BoxFit.cover)),
            ),
            ResturantInformation(resturant: resturant),
          ],
        ));
  }
}
