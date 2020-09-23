import 'package:e_site/FirstPage.dart';
import 'package:e_site/SecondPage.dart';
import 'package:flutter/material.dart';
import 'package:e_site/main.dart';

class RouteGenerator {
	static Route<dynamic> generateRoute(RouteSettings settings) {
		// Getting arguments passed in while calling Navigator.pushNamed
		final args = settings.arguments;
		switch (settings.name) {
			case '/':
				return MaterialPageRoute(builder: (_) => FirstPage());
			case '/second':
				return MaterialPageRoute(builder: (_) => SecondPage());
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