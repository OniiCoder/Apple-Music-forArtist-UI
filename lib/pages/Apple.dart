import 'package:apple_music_artist/pages/Insights.dart';
import 'package:apple_music_artist/pages/SummaryCards.dart';
import 'package:apple_music_artist/pages/TopCountries.dart';
import 'package:apple_music_artist/pages/TopShazams.dart';
import 'package:apple_music_artist/pages/TopSongs.dart';
import 'package:flutter/material.dart';

const pink = Color(0xffD31C4E);

class Apple extends StatefulWidget {
  @override
  _AppleState createState() => _AppleState();
}

class _AppleState extends State<Apple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: pink,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Artists',
          style: TextStyle(color: pink),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Lifetime',
              style: TextStyle(
              color: pink,
                fontSize: 18,
            ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SummaryCards(),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                        'Insights',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
              SizedBox(height: 25,),
              Insights(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Top Songs',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 18,
                          color: pink,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              TopSongs(),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Top Shazams',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 18,
                          color: pink,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              TopShazams(),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Countries/Regions',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 18,
                          color: pink,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              TopCountries(),
              SizedBox(height: 0,),
            ],
          ),
        ),
      ),
    );
  }
}
