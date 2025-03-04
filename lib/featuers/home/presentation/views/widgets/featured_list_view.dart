import 'package:bookly/featuers/home/presentation/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookly/featuers/home/presentation/manger/featured%20books%20cubit/featured_books_state.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: state.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomListViewItem(
                imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??''),
            );
          },
        ),
      );

        } 
        else if(state is FeaturedBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else {
          return CustomLoadingIndicator();
        }
      },
      
    );
  }
}
