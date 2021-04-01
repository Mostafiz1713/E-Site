import 'dart:convert';

import 'package:e_site/Constants/Url.dart';
import 'package:e_site/Models/Brands.dart';
import 'package:e_site/Models/NewsModel.dart';
import 'package:e_site/Models/ProductsModel.dart';
import 'package:http/http.dart' as http;

class APIManager {
  Future<Brands> getBrand() async {
    var client = http.Client();
    var brandModel = null;

    try {
      var response = await client.get(Uri.parse(Url.BrandAPI));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        brandModel = Brands.fromJson(jsonMap);
      }
    } catch (Exception) {
      return brandModel;
    }
    return brandModel;
  }
  
  Future<ProductsModel> getProduct() async {
    var client = http.Client();
    var productsModel = null;
    
    try{
      var response = await client.get(Uri.parse(Url.ProductsAPI));
      if (response.statusCode == 200){
        var jsonString = response.body;
        var jsonMap = jsonDecode(jsonString);
        //print("Braaaaaaaaaaaaaaaaaaaaaaaaaaaad API   :::::::::::::::::: ${Url.BrannedProductAPI+"?brand_id="+id.toString()}");

        productsModel = ProductsModel.fromJson(jsonMap);
      }
    }catch (Exception) {
      return productsModel;
    }
    return productsModel;
  }

  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newsModel = null;

    try {
      var response = await client.get(Uri.parse(Url.NewsAPI));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        newsModel = NewsModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsModel;
    }
    return newsModel;
  }
}
