import 'package:bookly/featuers/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    var widthf = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: widthf * .17),
            child: CustomListViewItem(),
          )
      
        ],
      ),
    );
  }
}






