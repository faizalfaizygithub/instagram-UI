import 'package:flutter/material.dart';
import 'package:instagram/assets.dart';
import 'package:instagram/widgets/avathar.dart';
import 'package:instagram/widgets/blueTick.dart';

class SuggestionCard extends StatelessWidget {
  final String proPhoto;
  final String proId;
  final String mutualFrd;
  final bool showBlueTick;

  SuggestionCard(
      {required this.proPhoto,
      required this.proId,
      this.showBlueTick = true,
      required this.mutualFrd});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      width: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              proPhoto,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 50),
          child: Row(children: [
            Text(
              proId != null ? proId : '',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            showBlueTick ? BlueTick() : SizedBox(),
          ]),
        ),
        Container(
          child: Column(children: [
            Text(mutualFrd != null ? mutualFrd : ''),
            ElevatedButton(
              child: Text('Follow',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              onPressed: () {
                print('you followed');
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(200, 30),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
