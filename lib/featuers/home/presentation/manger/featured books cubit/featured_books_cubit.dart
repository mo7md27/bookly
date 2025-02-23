import 'package:bookly/featuers/home/data/repos/home_repo.dart';
import 'package:bookly/featuers/home/presentation/manger/featured%20books%20cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit <FeaturedBooksState>{

FeaturedBooksCubit(this.homeRepo):super(FeaturedBooksInitial());


final HomeRepo homeRepo;


Future<void>fetchFeautredBooks()async{
  emit(FeaturedBooksLoading());
 var result= await homeRepo.fetchFeautredBooks();


 result.fold(
  (failure){
    emit(FeaturedBooksFailure(failure.errMessage));
  }, 
  
  (books){
    emit(FeaturedBooksSuccess(books));
  });
}


}