import 'package:apple_music_artist/BrainController.dart';
import 'package:flutter/material.dart';

const pink = Color(0xffD31C4E);
const grey = Color(0xff8E8E93);

class Countries extends StatefulWidget {
  @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {

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
                  child: CircleAvatar(
                    backgroundColor: (index == 0) ? Colors.green : (index == 1) ? Colors.red : Colors.blue,
                  ),
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
                                  (index == 0) ? 'Nigeria' : (index == 1) ? 'Ghana' : 'United States',
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
                                brainController.getInsightListItem(index).plays,
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
