import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Color(0xFFF3B2B7),
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back, color: Colors.white),
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //   ),
      // ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 20,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF3B2B7),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2 - 20.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                      color: Colors.white),
                ),
              ),

              //Content
              Positioned(
                top: MediaQuery.of(context).size.height / 2 + 25,
                left: 15,
                child: Container(
                  height: (MediaQuery.of(context).size.height / 2) - 50.0,
                  width: MediaQuery.of(context).size.width,
                  //padding: EdgeInsets.all(5),
                  child: ListView(
                    children: <Widget>[
                      Text('Preparation time',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff726b68))),
                      SizedBox(
                        height: 7,
                      ),
                      Text('5min',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14,
                              color: Color(0xffc6c4c4))),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: Container(
                          height: 0.5,
                          color: Color(0xffc6c4c4),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Ingredients',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff726b68))),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 110,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            _buildIngredientItem(
                                'Water',
                                Icon(Feather.getIconData('droplet'),
                                    size: 10.0, color: Colors.white),
                                Color(0xFF6FC5DA)),
                            _buildIngredientItem(
                                'Brewed Espresso',
                                Icon(Feather.getIconData("target"),
                                    size: 18.0, color: Colors.white),
                                Color(0xFF615955)),
                            _buildIngredientItem(
                                'Sugar',
                                Icon(Feather.getIconData("box"),
                                    size: 18.0, color: Colors.white),
                                Color(0xFFF39595)),
                            _buildIngredientItem(
                                'Toffee Nut Syrup',
                                Icon(
                                    MaterialCommunityIcons.getIconData(
                                        "peanut-outline"),
                                    size: 18.0,
                                    color: Colors.white),
                                Color(0xFF8FC28A)),
                            _buildIngredientItem(
                                'Natural Flavors',
                                Icon(
                                    MaterialCommunityIcons.getIconData(
                                        "leaf-maple"),
                                    size: 18.0,
                                    color: Colors.white),
                                Color(0xFF3B8079)),
                            _buildIngredientItem(
                                'Vanilla Syrup',
                                Icon(
                                    MaterialCommunityIcons.getIconData(
                                        "flower-tulip-outline"),
                                    size: 18.0,
                                    color: Colors.white),
                                Color(0xFFF8B870)),
                            SizedBox(width: 25.0)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: Container(
                          height: 0.5,
                          color: Color(0xffc6c4c4),
                        ),
                      ),
                      Text('Nutrion Information',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff726b68))),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Proteins',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                color: Color(0xFFD4D3D2)),
                          ),
                          SizedBox(width: 15.0),
                          Text(
                            '10g',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF716966)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Text(
                            'Caffeine',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                color: Color(0xFFD4D3D2)),
                          ),
                          SizedBox(width: 15.0),
                          Text(
                            '150mg',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF716966)),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Container(
                          height: 0.5,
                          color: Color(0xFFC6C4C4),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Color(0xFF473D3A)),
                          child: Center(
                            child: Text(
                              'Make Order',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.0)
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 10,
                left: 85,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/pinkcup.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                top: 25,
                left: 15,
                child: Container(
                  height: 300,
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 150,
                            child: Text(
                              'Caramel Macchiato',
                              style: TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white),
                              child: Center(
                                  child: Icon(Icons.favorite,
                                      size: 18.0, color: Colors.red))),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.end,
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        width: 170.0,
                        child: Text(
                            'Freshly steamed milk with vanilla-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 13.0,
                                color: Colors.white)),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xFF473D3A)),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('4.2',
                                    style: TextStyle(
                                        fontFamily: 'nunito',
                                        fontSize: 13.0,
                                        color: Colors.white)),
                                Text('/5',
                                    style: TextStyle(
                                        fontFamily: 'nunito',
                                        fontSize: 13.0,
                                        color: Color(0xFF7C7573))),
                              ],
                            )),
                          ),
                          SizedBox(width: 20.0),
                          Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 80,
                                  ),
                                  Positioned(
                                    left: 40,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                          border: Border.all(
                                              color: Color(0xff3b2b7),
                                              style: BorderStyle.solid,
                                              width: 1),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('assets/man.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                          border: Border.all(
                                              color: Color(0xff3b2b7),
                                              style: BorderStyle.solid,
                                              width: 1),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/model.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        border: Border.all(
                                            color: Color(0xff3b2b7),
                                            style: BorderStyle.solid,
                                            width: 1),
                                        image: DecorationImage(
                                            image:
                                                AssetImage('assets/model2.jpg'),
                                            fit: BoxFit.cover)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '+ 27 more',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 12.0,
                                    color: Colors.white),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: bgColor),
            child: Center(
              child: iconName,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            width: 60,
            child: Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 12,
                    color: Color(0xffc20c0)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
