import 'package:bookly/featuers/home/presentation/manger/newset%20books%20cubit/newset_books_cubit.dart';
import 'package:bookly/featuers/home/presentation/manger/newset%20books%20cubit/newset_books_state.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/best_seeler_list_view_item.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit,NewsetBooksState>(
      builder: (context, state) {
        

        if(state is NewsetBooksSuccess){
         return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BestSellerListViewItem(bookModel: state.books[index],
                ),
              );
            },
          );
        } else if(state is NewsetBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },

     
    );
  }
}
