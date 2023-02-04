import 'package:currencybase/Homepage/homepage.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
          title: Center(child: Text("Profile")),
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
        body: Container(
            color: Colors.transparent,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(20, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Name :Tharaniesh",
                          style: TextStyle(color: Colors.white),
                        ),
                        Divider(
                          height: 10,
                          color: Colors.transparent,
                        ),
                        Text(
                          "Password : ########",
                          style: TextStyle(color: Colors.white),
                        ),
                        Divider(
                          height: 20,
                          color: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
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
