import 'dart:async';
import 'dart:convert';
import 'package:currencybase/integration/coinModel.dart';
import 'package:currencybase/widgets/coincard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Future<List<coin>> fetchcoin() async {
    coinList = [];
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false'));
    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = jsonDecode(response.body);
      if (values.isNotEmpty) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(coin.fromJson(map));
          }
        }
        setState(() {
          coinList;
        });
      }
      return coinList;
    } else {
      throw Exception('failed to load screen');
    }
  }

  @override
  void initState() {
    fetchcoin();
    Timer.periodic(Duration(seconds: 5), (timer) => fetchcoin());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: coinList.length,
          itemBuilder: ((context, index) {
            return Coincard(
                name: coinList[index].name,
                symbol: coinList[index].symbol,
                imageurl: coinList[index].imageurl,
                price: coinList[index].price.toDouble(),
                change: coinList[index].change.toDouble(),
                changepercentage: coinList[index].changepercentage.toDouble());
          })),
    );
  }
}
