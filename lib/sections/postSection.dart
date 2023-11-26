import 'package:flutter/material.dart';
import 'package:instagram/assets.dart';
import 'package:instagram/sections/likeCommentSection.dart';
import 'package:instagram/widgets/avathar.dart';
import '../widgets/blueTick.dart';

class PostSection extends StatelessWidget {
  final String posterImage;
  final String avathar;
  final String name;
  final bool showBlueTick;
  final String location;

  PostSection({
    required this.avathar,
    required this.posterImage,
    this.showBlueTick = false,
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 2),
      child: Column(children: [
        headerSection(),
        postImageSection(),
        bottomSection(),
      ]),
    );
  }

  Widget headerSection() {
    return Container(
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border:
                Border.all(color: Color.fromARGB(211, 212, 124, 7), width: 3),
          ),
          height: 45,
          width: 45,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              100,
            ),
            child: Image.asset(
              avathar,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Row(
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            showBlueTick ? BlueTick() : SizedBox(),
          ],
        ),
        subtitle: Text(
          location == null ? '' : location,
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.more_horiz,
          ),
          onPressed: () {
            print('more clicked');
          },
        ),
      ),
    );
  }

  Widget postImageSection() {
    return Container(
      child: Image.asset(
        posterImage,
        fit: BoxFit.cover,
      ),
    );
  }
}

Widget bottomSection() {
  return Container(
    padding: EdgeInsets.only(left: 5, top: 5),
    child: Row(
      children: [
        Icon(
          Icons.favorite_border,
          color: Colors.black,
          size: 29,
        ),
        SizedBox(
          width: 5,
        ),
        IconButton(
          onPressed: () {
            print('comment button clicked');
          },
          icon: Icon(
            Icons.check_box_outline_blank,
            color: Colors.black,
            size: 29,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        IconButton(
          onPressed: () {
            print('comment button clicked');
          },
          icon: Icon(
            Icons.ios_share_outlined,
            color: Colors.black,
            size: 29,
          ),
        ),
        SizedBox(
          width: 190,
        ),
        Container(
          child: IconButton(
            icon: Icon(
              Icons.save_alt_outlined,
              size: 29,
            ),
            onPressed: () {
              print('SAVED');
            },
          ),
        )
      ],
    ),
  );
}
