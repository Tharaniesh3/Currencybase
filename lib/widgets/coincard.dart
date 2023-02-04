import 'package:flutter/material.dart';

class Coincard extends StatelessWidget {
  Coincard({
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
  double price;
  double change;
  double changepercentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 34, 33, 54),
            borderRadius: BorderRadius.circular(20)),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.network(
              imageurl,
              height: 60,
              width: 60,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              Text(
                symbol,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price.toDouble().toString(),
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Text(
                    change.toDouble() < 0
                        ? change.toDouble().toString()
                        : '+' + change.toDouble().toString(),
                    style: TextStyle(
                        color:
                            change.toDouble() < 0 ? Colors.red : Colors.green,
                        fontSize: 8),
                  ),
                  Text(
                    changepercentage.toDouble() < 0
                        ? changepercentage.toDouble().toString() + '%'
                        : '+' + changepercentage.toDouble().toString() + '%',
                    style: TextStyle(
                        color: changepercentage.toDouble() < 0
                            ? Colors.red
                            : Colors.green,
                        fontSize: 8),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
