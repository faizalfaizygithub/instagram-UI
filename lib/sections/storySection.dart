import 'package:flutter/material.dart';
import 'package:instagram/assets.dart';
import 'package:instagram/widgets/avathar.dart';

class StorySection extends StatelessWidget {
  final bool circleColor;

  StorySection({this.circleColor = true});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Avathar(
            profileImages: myDp,
            profileText: 'Your story',
            addButton: true,
            circleColor: false,
          ),
          Avathar(
            profileImages: fayis,
            profileText: 'Fayis_fayi',
          ),
          Avathar(
            profileImages: ubaid,
            profileText: 'Ubaid_zio',
          ),
          Avathar(
            profileImages: sarath,
            profileText: 'Sarath_C',
          ),
          Avathar(
            profileImages: tovi,
            profileText: 'Tovino_Thomas',
          ),
          Avathar(
            profileImages: yuvraj,
            profileText: 'Yuvraj_Sing',
          ),
          Avathar(
            profileImages: kunjikka,
            profileText: 'Dulquer ',
          ),
          Avathar(
            profileImages: ubaid,
            profileText: 'Ubaid_zio',
          ),
          Avathar(
            profileImages: sarath,
            profileText: 'Sarath_c',
          ),
          Avathar(
            profileImages: tovi,
            profileText: 'Tovino_Thomas',
          ),
          Avathar(
            profileImages: yuvraj,
            profileText: 'Yuvraj_Sing',
          ),
          Avathar(
            profileImages: kunjikka,
            profileText: 'Dulquer ',
          ),
          Avathar(
            profileImages: ubaid,
            profileText: 'Ubaid_zio',
          ),
        ],
      ),
    );
  }
}
