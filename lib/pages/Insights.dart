import 'package:apple_music_artist/BrainController.dart';
import 'package:flutter/material.dart';

const pink = Color(0xffD31C4E);
const grey = Color(0xff8E8E93);

class Insights extends StatefulWidget {
  @override
  _InsightsState createState() => _InsightsState();
}

class _InsightsState extends State<Insights> {
  BrainController brainController = BrainController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.builder(
        itemCount: brainController.getInsightsList().length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
//                    color: Colors.blue,
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border(
                            left: BorderSide(
                              color: pink,
                              width: 3,
                            ),
                            top: BorderSide(
                              color: pink,
                              width: 3,
                            ),
                            right: BorderSide(
                              color: pink,
                              width: 3,
                            ),
                            bottom: BorderSide(
                              color: pink,
                              width: 3,
                            ),
                          ),
                        ),
                        child: Icon(Icons.star_border, color: pink, size: 40,),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        brainController.getInsightListItem(index).date,
                        style: TextStyle(
                          color: grey,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 5,),
                      RichText(
                        text: TextSpan(
                          text: brainController.getInsightListItem(index).title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          children: <TextSpan> [
                            TextSpan(
                              text: 'hit ',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextSpan(
                              text: brainController.getInsightListItem(index).plays,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' all-time plays.',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      (index + 1) != brainController.getInsightsList().length ? Divider(color: grey,) : SizedBox(height: 5,),
                      SizedBox(height: 5,),
                    ],
                  ),
                ),
              ),
            ],
          );
        },

      ),
    );
  }
}
