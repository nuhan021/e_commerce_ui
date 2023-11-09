import 'package:e_commerce/cubit/products_cubit.dart';
import 'package:e_commerce/screens/cart_screen.dart';
import 'package:e_commerce/screens/home_page.dart';
import 'package:e_commerce/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash-screen' :
        return MaterialPageRoute(builder: (context) => SplashScreen(),);

      case '/home-screen' :
        return MaterialPageRoute(builder: (context) =>
            BlocProvider(
              create: (context) => ProductsCubit(),
              child: HomeScreen(),
            ),);

      case '/cart-screen':
        return MaterialPageRoute(builder: (context) => CartScreen(),);
    }
  }
}