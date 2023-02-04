import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class coin {
  coin({
    required this.name,
    required this.symbol,
    required this.imageurl,
    required this.price,
    required this.change,
    required this.changepercentage,
  });
  String name;
  String symbol;
  String imageurl;
  num price;
  num change;
  num changepercentage;

  factory coin.fromJson(Map<String, dynamic> json) {
    return coin(
        name: json['name'],
        symbol: json['symbol'],
        imageurl: json['image'],
        price: json['current_price'],
        change: json['price_change_24h'],
        changepercentage: json['price_change_percentage_24h']);
  }
}

List<coin> coinList = [];
