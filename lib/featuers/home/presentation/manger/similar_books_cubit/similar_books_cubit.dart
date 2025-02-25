import 'package:bookly/featuers/home/data/repos/home_repo.dart';
import 'package:bookly/featuers/home/presentation/manger/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState>{
  SimilarBooksCubit(this.homeRepo):super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void>fetchSimilarBooks({required String category})async{
    emit(SimilarBooksLoading());
    var result =await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure){
      emit(SimilarBooksFailure(failure.errMessage));

    }, (books){
      emit(SimilarBooksSuccess(books));
    });
  }
}