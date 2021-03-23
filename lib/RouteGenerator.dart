import 'file:///C:/Users/Dirilis/Desktop/E-Site/lib/Pages/FirstPage.dart';
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
				return MaterialPageRoute(builder: (_) => ProductsPage(args));
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