import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/bottom_bar.dart';
import 'package:flutter_coffe_shop/details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffe Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Coffe Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: <Widget>[
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Welcome, Nadia',
                  style: TextStyle(
                      fontFamily: 'varela',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff473d3a))),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/model.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 45),
            child: Container(
              child: Text(
                  'Let\'s select the best taste for you next coffe break!',
                  style: TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: Color(0xffb0aaa7))),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Taste of the week',
                  style: TextStyle(
                      fontFamily: 'varela',
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff473d3a))),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text('See all',
                    style: TextStyle(
                        fontFamily: 'varela',
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Color(0xffcec7c4))),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 410,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _coffeListCard(
                    'assets/starbucks.png',
                    'Caffe Misto',
                    'Coffeeshop',
                    'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                    '\$4.99',
                    false),
                _coffeListCard(
                    'assets/starbucks.png',
                    'Caffe Late',
                    'Coffeeshop',
                    'Rich, full-bodied expresso with bittwersweet milk sauce and steamed milk',
                    '\$3.99',
                    false),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Explore nearby',
                  style: TextStyle(
                      fontFamily: 'varela',
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff473d3a))),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text('See all',
                    style: TextStyle(
                        fontFamily: 'varela',
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Color(0xffcec7c4))),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 125,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildImage('assets/coffee.jpg'),
                _buildImage('assets/coffee2.jpg'),
                _buildImage('assets/coffee3.jpg'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
      // bottomNavigationBar: BottomBar(),
    );
  }

  Widget _buildImage(String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
        height: 100,
        width: 175,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
      ),
    );
  }

  Widget _coffeListCard(String imgPath, String coffeName, String shopName,
      String description, String price, bool isFavorite) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        height: 300,
        width: 225,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 335,
                ),
                Positioned(
                  top: 75.0,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    height: 260,
                    width: 225,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xffDAB68C)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          shopName + '\'s',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          coffeName,
                          style: TextStyle(
                              fontFamily: 'varela',
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              price,
                              style: TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3a4742)),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Center(
                                  child: Icon(
                                Icons.favorite,
                                color: isFavorite ? Colors.red : Colors.grey,
                                size: 15,
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 25,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.contain)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailsPage()));
              },
              child: Container(
                height: 50,
                width: 225,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xff473d3a)),
                child: Center(
                  child: Text('Order Now',
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
