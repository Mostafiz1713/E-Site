import 'package:e_site/Constants/themes.dart';
import 'package:flutter/material.dart';

class HomeTopWidget extends StatefulWidget {
  @override
  _HomeTopWidgetState createState() => _HomeTopWidgetState();
}

class _HomeTopWidgetState extends State<HomeTopWidget> {
  final textstyle = TextStyle(
    color: Themes.whiteText,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "What would you like to eat ?",
            style: Theme.of(context).textTheme.headline6.copyWith(color: Themes.whiteText),
          ),
        ],
      ),
    );
  }
}
