import 'package:e_site/Constants/themes.dart';

//import 'package:e_site/Widgets/NumberIncrementDecrement.dart';
import 'package:e_site/Widgets/NumberIncrementDecrement.dart' as number;

//import 'package:e_site/Widgets/NumberIncrementDecrement.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final cart;

  //final sum;

  OrderPage(this.cart);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int sum = 0;
  var total = 0;
  var data = number.numberCounter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.cart.forEach(
      (item) {
        sum = sum + item.categoryPrice;
        //total = sum*data;
        print("Toooooooooooooooooootaaaallllll  ::::::::::: $total");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //height: 50,
          child: Column(
            children: <Widget>[
              ListView.builder(
                itemCount: widget.cart.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(widget.cart[index].categoryName),
                      Text(
                        "\$${widget.cart[index].categoryPrice}",
                        style: TextStyle(
                            color: Themes.darkOrange,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      number.NumberIncrementDecrement(),
                    ],
                  );
                  /*return ListTile(
                    title: Text(widget.cart[index].categoryName),
                    trailing: Text(
                      "\$${widget.cart[index].categoryPrice}",
                      style: TextStyle(
                          color: Themes.darkOrange,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    //leading: Icon(Icons.ac_unit_outlined),
                    leading: NumberIncrementDecrement(),
                    onTap: () {},
                  );*/
                },
              ),
              Divider(),
              Text(
                "Total : \$${sum}",
                //"Total : \$${total}",
                //"Total : \$${sum*data}",
                style: TextStyle(
                  color: Themes.darkOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
