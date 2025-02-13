import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(height: 50),
        Text('Best Seller',
        style: Styles.titleMedium,),

        BestSellerListViewItem()
      
      
      ],),
    );
  }
}


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 125,
      child: Row(children: [
        AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(
          height: MediaQuery.of(context).size.height*.25,
          width: MediaQuery.of(context).size.width*.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage(AssetsData.test))
          ),
        ),
      ),
        Column(children: [
          
      
        ],)
      ],),
    );
  }
}

