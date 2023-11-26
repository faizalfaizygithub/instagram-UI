import 'package:flutter/material.dart';
import 'package:instagram/assets.dart';
import 'package:instagram/sections/captionSection.dart';
import 'package:instagram/sections/likeCommentSection.dart';
import 'package:instagram/sections/postSection.dart';
import 'package:instagram/sections/storySection.dart';
import 'package:instagram/sections/suggestionSection.dart';
import 'package:instagram/widgets/circularButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Instagram',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Instagram Font',
              fontWeight: FontWeight.w100,
              fontSize: 30,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.favorite_border,
                buttonIconColor: Colors.black,
                buttonAction: () {
                  print('go to fvrts');
                }),
            const SizedBox(
              width: 10,
            ),
            CircularButton(
                buttonIcon: Icons.messenger_outline,
                buttonIconColor: Colors.black,
                buttonAction: () {
                  print('go to chat');
                }),
          ],
        ),
        body: ListView(
          children: [
            StorySection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            PostSection(
              avathar: myDp,
              posterImage: psg,
              name: 'Fzy_faizy',
              location: 'paris',
            ),
            LikeCommentSection(
              imageOne: ubaid,
              imageTwo: fayis,
              imageThree: sarath,
              likeText: 'Liked by fayis_fayi and 789 others',
            ),
            CaptionSection(
              instaId: 'Fzy_faizy',
              captionText: njrInjurycaption,
              viewCountComment: 'View all 67 comments',
              publishedAt: '3 hours ago',
            ),
            PostSection(
                avathar: fayis,
                posterImage: mammu,
                name: 'Fayis_Fayi',
                location: 'Kochi'),
            LikeCommentSection(
              imageOne: kunjikka,
              imageTwo: sarath,
              imageThree: tovi,
              likeText: 'Liked by fzy_faizy and 637 others',
            ),
            CaptionSection(
              instaId: 'fayis_fayi',
              captionText: dqcaption,
              viewCountComment: 'View all 90 comments',
              publishedAt: '24 minutes ago',
            ),
            PostSection(
                avathar: kunjikka,
                posterImage: ikkapost,
                name: 'dqsalmaan',
                showBlueTick: true,
                location: 'Kochi'),
            LikeCommentSection(
              imageOne: kunjikka,
              imageTwo: tovi,
              imageThree: yuvraj,
              likeText: 'Liked by mammootty and 637 others',
            ),
            CaptionSection(
              instaId: 'dqsalmaan',
              captionText: bdycap,
              viewCountComment: 'View all 90 comments',
              publishedAt: '2 minutes ago',
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[200],
            ),
            SuggestionSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[200],
            ),
            PostSection(
                avathar: tovi,
                posterImage: flowerpost,
                name: 'tovinothomas',
                showBlueTick: true,
                location: 'palakkad'),
            LikeCommentSection(
              imageOne: kunjikka,
              imageTwo: tovi,
              imageThree: yuvraj,
              likeText: 'Liked by mammootty and 637 others',
            ),
            CaptionSection(
              instaId: 'tovinothomas',
              captionText: '',
              viewCountComment: 'View all 90 comments',
              publishedAt: '10 minutes ago',
            ),
          ],
        ),
      ),
    );
  }
}
