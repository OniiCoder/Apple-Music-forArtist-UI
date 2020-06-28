import 'package:apple_music_artist/BrainController.dart';
import 'package:apple_music_artist/pages/Shazams.dart';
import 'package:apple_music_artist/pages/Songs.dart';
import 'package:flutter/material.dart';

const pink = Color(0xffD31C4E);
const grey = Color(0xff8E8E93);

class TopShazams extends StatefulWidget {
  @override
  _TopShazamsState createState() => _TopShazamsState();
}

class _TopShazamsState extends State<TopShazams> {

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
            child: Shazams(),
          ),
          SizedBox(width: 20,),
          Container(
//            color: Colors.red,
            height: 250,
            width: 350,
            child: Shazams(),
          ),
          SizedBox(width: 20,),
        ],
      ),
    );
  }
}
