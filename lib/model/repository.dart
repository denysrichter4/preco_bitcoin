import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:preco_bitcoin/controller/constants.dart';

class Repository{

  late String price;

  _fetchPrice() async {
    http.Response response = await http.get(Constants.URL);
    Map<String, dynamic> priceMap = json.decode(response.body);
    this.price = priceMap["BRL"]["last"];
  }

  String getPrice(){
    _fetchPrice();
    return this.price;
  }

}