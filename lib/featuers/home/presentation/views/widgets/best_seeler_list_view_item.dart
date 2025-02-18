import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
      SizedBox(width: 30,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            width: MediaQuery.of(context).size.width *.5,
            child: Text("Harry Potter and Goblet of Fire",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),),
          ),
          SizedBox(height: 3,),

          Text('J.K Rowling',
           style: Styles.textStyle14,),

           Row(
            children: [
              Text('19.99',
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
              SizedBox(height: 3,),
              
            ],
           )
          
      
        ],)
      ],),
    );
  }
}

