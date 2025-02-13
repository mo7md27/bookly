import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.23,
      child: AspectRatio(
        aspectRatio: 2.8/4,
        child: Container(
          height: MediaQuery.of(context).size.height*.25,
          width: MediaQuery.of(context).size.width*.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage(AssetsData.test))
          ),
        ),
      ),
    );
  }
}

