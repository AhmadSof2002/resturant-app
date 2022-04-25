import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:resturant_app/bloc/cubit.dart';
import 'package:resturant_app/bloc_observer.dart';
import 'package:resturant_app/config/app_router.dart';
import 'package:resturant_app/config/theme.dart';
import 'package:resturant_app/screens/home/home_screen.dart';
import 'package:resturant_app/screens/location/location_screen.dart';
import 'package:resturant_app/screens/resturant_details/resturant_details_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.location.request();

  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..getMyLocation(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: theme(),
        home: HomeScreen(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: ResturantDetailsScreen.routeName,
      ),
    );
  }
}
