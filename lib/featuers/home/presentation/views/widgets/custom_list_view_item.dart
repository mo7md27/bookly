import 'package:flutter/material.dart';


class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});

final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        height: MediaQuery.of(context).size.height * .25,
        width: MediaQuery.of(context).size.width * .3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                fit: BoxFit.fill, image:
                 NetworkImage(imageUrl))),
      ),
    );
  }
}
