import 'package:apple_music_artist/pages/Apple.dart';
import 'package:flutter/material.dart';

const pink = Color(0xffD31C4E);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Apple Music for Artist', style: TextStyle(color: pink),),
        elevation: 0,
      ),
      body: Center(
        child: RaisedButton(
          color: pink,
          textColor: Colors.white,
          padding: EdgeInsets.all(20.0),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Apple()));
          },
          child: Text(
            'Go to demo'
          ),
        ),
      ),
    );
  }
}
