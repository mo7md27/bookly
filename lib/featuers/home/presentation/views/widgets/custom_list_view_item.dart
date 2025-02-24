import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});

final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child:CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Icon(Icons.error_outline_rounded),
          
          
          ),
      ),
    );
  }
}
