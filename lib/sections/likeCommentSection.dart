import 'package:flutter/material.dart';
import 'package:instagram/assets.dart';
import 'package:instagram/widgets/avathar.dart';

class LikeCommentSection extends StatelessWidget {
  final String imageOne;
  final String imageTwo;
  final String imageThree;
  final String likeText;

  LikeCommentSection({
    required this.imageOne,
    required this.imageTwo,
    required this.imageThree,
    required this.likeText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Stack(
        children: [
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                imageOne,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 15,
            child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    imageTwo,
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          Positioned(
            left: 30,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  imageThree,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 55),
            child: Text(
              likeText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
