import 'package:currencybase/Homepage/homepage.dart';
import 'package:flutter/material.dart';

class marketcoins extends StatefulWidget {
  const marketcoins({Key? key}) : super(key: key);

  @override
  State<marketcoins> createState() => _marketcoinsState();
}

class _marketcoinsState extends State<marketcoins> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/lawrencium.jpg',
            )),
      ),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: Center(child: Text("Top Coins")),
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Color.fromARGB(20, 255, 255, 255)),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        backgroundColor: Colors.transparent,
        body: Container(color: Colors.transparent, child: homepage()),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Color.fromARGB(20, 255, 255, 255)),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Row(children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home_outlined),
                color: Color.fromARGB(163, 255, 255, 255),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.folder_open_outlined),
                color: Color.fromARGB(163, 255, 255, 255),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle_outline_outlined,
                ),
                iconSize: 30,
                color: Color.fromARGB(163, 255, 255, 255),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.analytics_outlined),
                color: Color.fromARGB(163, 255, 255, 255),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_circle_outlined),
                color: Color.fromARGB(163, 255, 255, 255),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
