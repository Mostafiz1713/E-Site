import 'package:e_site/Models/foodCategoryModel.dart';
import 'package:e_site/Pages/NewProductPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'orderPage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var message = 'Do you really want close?';
  int currentIndex = 0;
  List<Widget> pages;
  List<FoodCategoryModel> cart = [];
  int sum = 0;
  int counter = 0;

  Widget currentPage;
  NewProductPage newProductPage;
  OrderPage orderPage;

  Widget _getIcon() {
    if (currentIndex > 0)
      return Icon(Icons.arrow_back_ios);
    else
      return Icon(Icons.exit_to_app);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    newProductPage = NewProductPage((selectedProduct) {
      setState(() {
        cart.add(selectedProduct);//update
        //if(selectedProduct.categoryID == selectedProduct.categoryID)

        print("Selected Product ::::::::::::::::::::::::::::  ${selectedProduct.categoryID}");
        //sum = 0;
        /*cart.forEach(
          (item) {
            sum = sum + item.categoryPrice;
            print("Toooooooooooooooooootaaaallllll  ::::::::::: $sum");
          },
        );*/
      });
    });
    orderPage = OrderPage(cart);
    pages = [newProductPage, orderPage];
    currentPage = newProductPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: _getIcon(),
              onPressed: () {
                if (currentIndex == 0) {
                  SystemNavigator.pop();
                } else {
                  Navigator.of(context).pushNamed('/mainScreen');
                }
              })),
      endDrawer: Drawer(),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
            currentPage = pages[index];
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('Order')),
        ],
      ),
    );
  }
}
