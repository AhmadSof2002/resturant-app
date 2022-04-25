import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/screens/basket/basket_screen.dart';
import 'package:resturant_app/screens/checkout/checkout_screen.dart';
import 'package:resturant_app/screens/delivery_time/delivery_time_screen.dart';
import 'package:resturant_app/screens/filter/filter_screen.dart';
import 'package:resturant_app/screens/location/location_screen.dart';
import 'package:resturant_app/screens/resturant_listing/resturant_listing_screen.dart';
import 'package:resturant_app/screens/screens.dart';
import 'package:resturant_app/screens/search/search_screen.dart';
import 'package:resturant_app/screens/voucher/voucher_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('route name is: ${settings}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckOutScreen.routeName:
        return CheckOutScreen.route();
      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();
      case FilterScreen.routeName:
        return FilterScreen.route();
      case ResturantListingScreen.routeName:
        return ResturantListingScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();
      case ResturantDetailsScreen.routeName:
        return ResturantDetailsScreen.route();
        // case SearchScreen.routeName:
        //   return SearchScreen.route();

        break;

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('error'),
              ),
            ),
        settings: RouteSettings(name: 'error'));
  }
}
