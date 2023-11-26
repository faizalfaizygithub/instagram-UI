import 'package:flutter/material.dart';
import 'package:instagram/assets.dart';
import 'package:instagram/widgets/circularButton.dart';

class Avathar extends StatelessWidget {
  final String profileImages;
  final String profileText;
  final bool addButton;
  final bool circleColor;
  final double width;
  final double height;

  Avathar(
      {required this.profileImages,
      this.addButton = false,
      this.circleColor = true,
      required this.profileText,
      this.width = 70,
      this.height = 70});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.all(4),
        padding: EdgeInsets.only(top: 23, left: 2, right: 2, bottom: 1),
        decoration: circleColor
            ? BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color.fromARGB(
                    216,
                    221,
                    118,
                    21,
                  ),
                  width: 3,
                ),
              )
            : null,
        child: Column(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  100,
                ),
                child: Image.asset(
                  profileImages,
                  height: width,
                  width: height,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
          bottom: -2,
          left: 9,
          child: Text(
            profileText,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )),
      addButton == true
          ? Positioned(
              bottom: 25,
              right: 1,
              child: Container(
                height: 27,
                width: 27,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
                child: addButton
                    ? Icon(
                        Icons.add,
                        size: 15,
                        color: Colors.white,
                      )
                    : SizedBox(),
              ),
            )
          : SizedBox()
    ]);
  }
}
