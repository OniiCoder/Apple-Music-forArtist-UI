import 'package:apple_music_artist/BrainController.dart';
import 'package:apple_music_artist/pages/Songs.dart';
import 'package:flutter/material.dart';

const pink = Color(0xffD31C4E);
const grey = Color(0xff8E8E93);

class TopSongs extends StatefulWidget {
  @override
  _TopSongsState createState() => _TopSongsState();
}

class _TopSongsState extends State<TopSongs> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(width: 20,),
          Container(
//            color: Colors.red,
            height: 250,
            width: 350,
            child: Songs(),
          ),
          SizedBox(width: 20,),
          Container(
//            color: Colors.red,
            height: 250,
            width: 350,
            child: Songs(),
          ),
          SizedBox(width: 20,),
          Container(
//            color: Colors.red,
            height: 250,
            width: 350,
            child: Songs(),
          ),
          SizedBox(width: 20,),
        ],
      ),
    );
  }
}
