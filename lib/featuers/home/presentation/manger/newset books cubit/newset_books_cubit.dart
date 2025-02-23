import 'package:bookly/featuers/home/data/repos/home_repo.dart';
import 'package:bookly/featuers/home/presentation/manger/newset%20books%20cubit/newset_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState>{

  NewsetBooksCubit(this.homeRepo):super(NewsetBooksInitial());

  
final HomeRepo homeRepo;


Future<void>fetchNewsetBooksfetchFeautredBooks()async{
  emit(NewsetBooksLoading());
 var result= await homeRepo.fetchFeautredBooks();


 result.fold(
  (failure){
    emit(NewsetBooksFailure(failure.errMessage));
  }, 
  
  (books){
    emit(NewsetBooksSuccess(books));
  });
}
}