import 'package:apple_music_artist/pages/Chart.dart';
import 'package:apple_music_artist/pages/Chart2.dart';
import 'package:flutter/material.dart';

const pink = Color(0xffD31C4E);
const grey = Color(0xff8E8E93);
const lightGrey = Color(0xffF5F5F5);

class SummaryCards extends StatefulWidget {
  @override
  _SummaryCardsState createState() => _SummaryCardsState();
}

class _SummaryCardsState extends State<SummaryCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            SizedBox(width: 20,),
            Container(
              height: 200,
              width: 350,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: lightGrey,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Plays',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '150.2K',
                            style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      child: Chart(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 20,),
            Container(
              height: 200,
              width: 350,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: lightGrey,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Average Daily Listeners',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '13K',
                            style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      child: Chart2(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 20,),
          ],
        ),
      ),
    );
  }
}
