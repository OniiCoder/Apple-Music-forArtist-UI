import 'package:apple_music_artist/BrainController.dart';
import 'package:flutter/material.dart';

const pink = Color(0xffD31C4E);
const grey = Color(0xff8E8E93);

class Shazams extends StatefulWidget {
  @override
  _ShazamsState createState() => _ShazamsState();
}

class _ShazamsState extends State<Shazams> {

  BrainController brainController = BrainController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: brainController.getInsightsList().length - 2,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: pink,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(Icons.play_circle_outline, color: Colors.white, size: 40,),
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
                    SizedBox(height: 15,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 9,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Text(
                                  (index + 1).toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 11,
                                child: Text(
                                  brainController.getInsightListItem(index).title,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                index == 0 ? "54" : index == 1 ? "129" : "342",
                                style: TextStyle(
                                  color: grey,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    (index + 1) != brainController.getInsightsList().length - 2 ? Divider(color: grey,) : SizedBox(height: 5,),
                    SizedBox(height: 5,),
                  ],
                ),
              ),
            ),
          ],
        );
      },

    );
  }
}
