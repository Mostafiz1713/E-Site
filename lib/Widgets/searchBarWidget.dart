import 'package:e_site/Constants/themes.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
			borderRadius: BorderRadius.circular(20.0),
			elevation: 5.0,
			child: TextField(
        decoration: InputDecoration(
					hintText: "Search any food",
					suffixIcon: Material(
						elevation: 5.0,
						color: Themes.lightOrange,
						borderRadius: BorderRadius.circular(20.0),
						child: Icon(
							Icons.search,
							color: Colors.black,
						),
					),
					border: InputBorder.none,
					contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 12.0),
				),
			),
		);
  }
}
