import 'package:flutter/material.dart';

import '../animation/scale_animation.dart';
import '../ui/detailed_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color favColor = Colors.grey;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.all(40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                Text(
                  'E-CART',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.height * 0.45,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext ctxt, int index) {
                  return new Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.7,
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      color: Colors.white,
                      elevation: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                              child: Image.asset('images/phone1.png')),
                          const Text(
                            'Apple iPhone X',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "\$480",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.category,
                                  color: Colors.black,
                                ),
                                FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        ScaleRoute(page: DetailedPage()));
                                  },
                                  textColor: Colors.black,
                                  child: const Text(
                                    'More',
                                  ),
                                  color: Colors.white,
                                ),
                                IconButton(
                                  icon: Icon(Icons.favorite, color: favColor),
                                  onPressed: () {
                                    setState(() {
                                      favColor = Colors.redAccent;
                                    });
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.black)),
            onPressed: () {},
            color: Colors.black,
            textColor: Colors.white,
            child: const Text("Filters", style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
