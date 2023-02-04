import 'package:currencybase/Homepage/homepage.dart';
import 'package:currencybase/UI/marketcoins.dart';
import 'package:currencybase/UI/profile.dart';
import 'package:currencybase/widgets/horizontalslider.dart';
import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
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
          title: Center(child: Text("Currencybase")),
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
        drawer: Drawer(
          backgroundColor: Color.fromARGB(177, 255, 255, 255),
          child: Padding(
            padding: EdgeInsets.only(top: 350, bottom: 350),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(left: 110),
                    child: Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.black,
                          size: 30,
                        ),
                        Text(
                          " Home",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(left: 110),
                    child: Row(
                      children: [
                        Icon(
                          Icons.announcement_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                        Text(
                          " About Us",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(left: 110),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                        Text(
                          " Profile",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(left: 110),
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.black,
                          size: 30,
                        ),
                        Text(
                          " Settings",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                color: Colors.transparent,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(30, 255, 255, 255)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 15.0, right: 15.0),
                    child: Column(children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.wallet,
                              color: Color.fromARGB(163, 255, 255, 255),
                            ),
                          ),
                          Text(
                            "Wallet",
                            style: TextStyle(
                              color: Color.fromARGB(163, 255, 255, 255),
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Color.fromARGB(163, 255, 255, 255),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(23),
                        child: Column(
                          children: [
                            Text(
                              "🪙 Total Balance",
                              style: TextStyle(
                                  color: Color.fromARGB(163, 255, 255, 255),
                                  fontWeight: FontWeight.w300),
                            ),
                            Divider(
                              color: Colors.transparent,
                              height: 10,
                            ),
                            Text(
                              "₹19200",
                              style: TextStyle(
                                  color: Color.fromARGB(163, 255, 255, 255),
                                  fontSize: 30,
                                  fontWeight: FontWeight.normal),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 80, right: 80),
                              child: Divider(
                                thickness: 2,
                              ),
                            ),
                            Divider(
                              height: 14,
                              color: Colors.transparent,
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Top Up  ⬆️",
                                    style: TextStyle(
                                      color: Color.fromARGB(163, 255, 255, 255),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 20,
                                  width: 1,
                                  color: Color.fromARGB(163, 255, 255, 255),
                                ),
                                Spacer(),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Withdraw 💵",
                                    style: TextStyle(
                                      color: Color.fromARGB(163, 255, 255, 255),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(15, 255, 255, 255),
                      borderRadius: BorderRadius.circular(30)),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => marketcoins()),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text(
                            "Top Coins",
                            style: TextStyle(
                                color: Color.fromARGB(163, 255, 255, 255),
                                fontSize: 25),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 140, right: 140),
                          child: Divider(
                            color: Colors.orange[400],
                            thickness: 2,
                          ),
                        ),
                        homepage(),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            "View all...",
                            style: TextStyle(
                                color: Color.fromARGB(163, 255, 255, 255),
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.transparent,
              ),
              horizontalslider(),
            ],
          ),
        ),
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profile()));
                },
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
