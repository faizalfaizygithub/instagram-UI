import 'package:flutter/material.dart';
import 'package:instagram/assets.dart';
import 'package:instagram/widgets/blueTick.dart';
import 'package:instagram/widgets/suggestionCard.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      height: 360,
      child: Column(children: [
        ListTile(
          title: Text(
            'Suggested for you',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          trailing: Text(
            'See all',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 280,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SuggestionCard(
                proPhoto: yuvraj,
                proId: 'yuvisofficial',
                mutualFrd: 'Followe by amigoz_ami,..',
              ),
              SuggestionCard(
                proPhoto: tovi,
                proId: 'tovinothomas',
                mutualFrd: 'Followe by sara_rukzz,..',
              ),
              SuggestionCard(
                proPhoto: sarath,
                proId: 'sarthchandran',
                mutualFrd: 'Followe by noufal_NS,..',
                showBlueTick: false,
              ),
              SuggestionCard(
                proPhoto: ubaid,
                proId: 'ubaidzio',
                mutualFrd: 'Followe by shuhaib_sha,..',
                showBlueTick: false,
              ),
              SuggestionCard(
                proPhoto: kunjikka,
                proId: 'dqsalamaan',
                mutualFrd: 'Followe by prithviraj and,..',
              ),
            ],
          ),
        )
      ]),
    );
  }
}
