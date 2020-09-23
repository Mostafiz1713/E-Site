import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('This is First Page'),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: Text('Next Page'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
