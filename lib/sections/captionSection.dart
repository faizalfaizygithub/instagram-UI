import 'package:flutter/material.dart';

class CaptionSection extends StatelessWidget {
  final String captionText;
  final String instaId;
  final String viewCountComment;
  final String publishedAt;

  CaptionSection(
      {required this.captionText,
      required this.instaId,
      required this.viewCountComment,
      required this.publishedAt});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        ListTile(
          leading: Text(
            instaId,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Text(
            captionText == null ? '' : captionText,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.only(left: 3),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      viewCountComment,
                      style: TextStyle(color: Colors.grey[700], fontSize: 20),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      publishedAt,
                      style: TextStyle(color: Colors.grey[700], fontSize: 18),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
