import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/book_tating.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var widthf = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthf * .2),
          child: CustomListViewItem(imageUrl: 'https://sl.bing.net/fSUoUinlObQ',),
        ),
        SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 16),
        BookRating(
          count: 200,
          rating: 55,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 37,
        ),
        BooksAction(),
      ],
    );
  }
}
