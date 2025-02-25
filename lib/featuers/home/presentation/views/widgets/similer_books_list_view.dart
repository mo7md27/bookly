import 'package:bookly/featuers/home/presentation/manger/similar_books_cubit/similar_books_state.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      builder: (context, state) {
        if(state is SimilarBooksSuccess){
          return  SizedBox(
        height: MediaQuery.of(context).size.height * .15,
        child: ListView.builder(
          itemCount: state.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomListViewItem(
               imageUrl:"jjjjjjjjjjjjjj",
                ),
            );
          },
        ),
      );
        } else if (state is SimilarBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return CustomLoadingIndicator();
        }
      },
     
    );
  }
}
