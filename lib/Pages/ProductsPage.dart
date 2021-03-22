import 'package:e_site/Constants/Url.dart';
import 'package:e_site/Models/ProductsModel.dart';
import 'package:e_site/Services/APIClient.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  final int id;

  ProductsPage({Key key, @required this.id}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  Future<ProductsModel> _productsModel;

  @override
  void initState() {
    _productsModel = APIManager().getProduct(widget.id);
    print("Brannnnddddddddddddddddd ID ::::::::::   ${widget.id}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.of(context).popAndPushNamed(
                "/");
          },
        ),
      ),
      body: Container(
        child: FutureBuilder<ProductsModel>(
          future: _productsModel,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.results.data.length,
                  itemBuilder: (context, index) {
                    var product = snapshot.data.results.data[index];
                    return Container(
                      height: 100,
                      margin: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                Url.BaseURL + product.logo,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Flexible(
                            child: Text(
                              product.name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          /*IconButton(
                              icon: Icon(Icons.fast_forward_rounded),
                              onPressed: () {
                                Navigator.of(context).popAndPushNamed(
                                    "ProductsPage",
                                    arguments: brand.id);
                              })*/
                        ],
                      ),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
