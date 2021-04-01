import 'package:e_site/Pages/NewProductPage.dart';
import 'package:e_site/Pages/mainScreen.dart';
import 'package:e_site/Pages/orderPage.dart';

import 'Pages/FirstPage.dart';
import 'package:e_site/Pages/ProductsPage.dart';
import 'package:flutter/material.dart';
import 'package:e_site/main.dart';

class RouteGenerator {
	static Route<dynamic> generateRoute(RouteSettings settings) {
		// Getting arguments passed in while calling Navigator.pushNamed
		final args = settings.arguments;
		switch (settings.name) {
			case '/':
				return MaterialPageRoute(builder: (_) => FirstPage());
			case 'ProductsPage':
				//return MaterialPageRoute(builder: (_) => ProductsPage(args));
				return MaterialPageRoute(builder: (_) => ProductsPage());
			case 'NewProductsPage':
				return MaterialPageRoute(builder: (_) => NewProductPage(args));
			case 'MainScreen':
				return MaterialPageRoute(builder: (_) => MainScreen());
			case 'OrderPage':
				return MaterialPageRoute(builder: (_) => OrderPage(args));
			default:
			// If there is no such named route in the switch statement, e.g. /third
				return _errorRoute();
		}
	}

	static Route<dynamic> _errorRoute() {
		return MaterialPageRoute(builder: (_) {
			return Scaffold(
				appBar: AppBar(
					title: Text('Error'),
				),
				body: Center(
					child: Text('ERROR'),
				),
			);
		});
	}
}