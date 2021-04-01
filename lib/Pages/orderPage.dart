import 'package:e_site/Constants/themes.dart';

//import 'package:e_site/Widgets/NumberIncrementDecrement.dart';
import 'package:e_site/Widgets/NumberIncrementDecrement.dart' as number;
import 'package:flutter/foundation.dart';

//import 'package:e_site/Widgets/NumberIncrementDecrement.dart';
import 'package:flutter/material.dart';

import '../Models/foodCategoryModel.dart';
import '../Models/foodCategoryModel.dart';
import '../foodCategoryData.dart';
import '../foodCategoryData.dart';
import 'mainScreen.dart';
import 'mainScreen.dart';

class OrderPage extends StatefulWidget {
  List<FoodCategoryModel> cart;

  //final sum;

  OrderPage(this.cart);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int sum = 0;
  var total = 0;
  var data = number.numberCounter;

  var price;

  FoodCategoryModel category;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //price = category.categoryPrice*category.cartCount;

    widget.cart.forEach(
      (item) {
        sum = sum + item.categoryPrice;
        //total = sum*data;
        //print("Toooooooooooooooooootaaaallllll  ::::::::::: $total");
      },
    );

    print("Sum =====>> ${sum}");
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
                  category = foodcategories
                      .where((element) =>
                          element.categoryID == widget.cart[index].categoryID)
                      .first;
/*
                  foodcategories.forEach((element) {
                    if (element.categoryID == widget.cart[index].categoryID) {
                      print("ProductPrice  ===> ${element.categoryPrice}");
                    }
                  });*/

                  /*     price = category.categoryPrice;*/

                  print("Value 1 ${category.categoryPrice}");
                  print("Value 2 ${category.cartCount}");

                  var a = category.categoryPrice * (category.cartCount ?? 1);
                  print(a);

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(widget.cart[index].categoryName),
                      Text(
                        "\$${(a).toString()}",
                        style: TextStyle(
                            color: Themes.darkOrange,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      number.NumberIncrementDecrement(
                        itemCount: (value) {
                          setState(() {
                            category.cartCount = value;
                          });
                          print(
                              "The Value is  : ${value} x ${category.categoryPrice} == ${price}");
                        },
                      ),
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
