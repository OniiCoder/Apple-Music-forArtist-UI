
import 'package:apple_music_artist/model/Insights.dart';

class BrainController {

  List InsightsList = [
    Insights(date: 'MAY 29, 2020', title: 'Don\'t Stop ', plays: '5,000'),
    Insights(date: 'MAY 14, 2020', title: 'Where You Are (feat. Kaygee ADN) ', plays: '20,000'),
    Insights(date: 'APRIL 3, 2020', title: 'Sunshine (feat. Cj Biggerman) ', plays: '35,000'),
    Insights(date: 'JANUARY 31, 2020', title: 'Down ', plays: '14,000'),
    Insights(date: 'JANUARY 15, 2020', title: 'On a Normal ', plays: '75,000'),
  ];

  List getInsightsList() {
    return InsightsList;
  }

  Insights getInsightListItem(int index) {
    return InsightsList[index];
  }
}