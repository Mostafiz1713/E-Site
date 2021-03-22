import 'package:e_site/Constants/Url.dart';
import 'package:e_site/Models/Brands.dart';
import 'package:e_site/Models/NewsModel.dart';
import 'package:e_site/Services/APIClient.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Future<Brands> _brandModel;

  //Future<NewsModel> _newsModel;

  @override
  void initState() {
    _brandModel = APIManager().getBrand();
    //_newsModel = APIManager().getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: FutureBuilder<Brands>(
          future: _brandModel,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.results.data.length,
                  itemBuilder: (context, index) {
                    var brand = snapshot.data.results.data[index];
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
                                Url.BaseURL + brand.logo,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Flexible(
                            child: Text(
                              brand.name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            brand.id.toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              icon: Icon(Icons.fast_forward_rounded),
                              onPressed: () {
                                Navigator.of(context).popAndPushNamed(
                                    "ProductsPage",
                                    arguments: brand.id);
                              })
                        ],
                      ),
                    );
                  });
            } else
              return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
